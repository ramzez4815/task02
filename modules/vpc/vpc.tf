module "network_vpc" {
  source = "terraform-google-modules/network/google//modules/vpc"
  project_id              = var.project_id
  network_name            = var.gke_network_name
  auto_create_subnetworks = var.vpc_auto_create_subnetworks 
  mtu                     = var.vpc_mtu
}

module "network_subnets" {
  source = "terraform-google-modules/network/google//modules/subnets"

  project_id   = var.project_id
  network_name = var.gke_network_name

  subnets = [
    {
      subnet_name           = var.gke_subnetwork_name
      subnet_ip             = var.gke_subnet_ip
      subnet_private_access = var.gke_subnet_private_access
      subnet_region         = var.gke_region
    }
  ]

  secondary_ranges = {
    demo-subnet = [
      {
        range_name    = var.gke_pod_range
        ip_cidr_range = var.gke_ip_cidr_range_pod
      },
      {
        range_name    = var.gke_service_range
        ip_cidr_range = var.gke_ip_cidr_range_service
      }
    ]
  }
  depends_on = [module.network_vpc]
}


resource "google_compute_firewall" "allow_ssh" {
  name      = var.gke_firewall_rule
  network   = module.network_vpc.network_name
  direction = var.gke_firewall_direction
  allow {
    protocol = var.gke_firewall_protocol
    ports    = [var.gke_firewall_port]
  }
  target_tags = ["ssh-enabled"]
  depends_on  = [module.network_vpc]
}
