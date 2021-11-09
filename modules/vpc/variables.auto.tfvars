project_id              = "epam-001"
gke_network_name            = "demo-network"
vpc_auto_create_subnetworks = false
vpc_mtu                     = 1460
gke_subnetwork_name         = "demo-subnet"
gke_subnet_ip = "10.232.0.0/20"
gke_subnet_private_access   = "true"
gke_pod_range               = "pod-ip-range"
gke_service_range           = "service-ip-range"
gke_ip_cidr_range_pod = "10.0.0.0/16"
gke_ip_cidr_range_service = "10.10.0.0/20"
gke_privade_block_name = "private-ip-block"
gke_privade_block_purpose = "VPC_PEERING"
gke_privade_block_address_type = "INTERNAL"
gke_privade_block_ip_version = "IPV4"
gke_privade_block_prefix_length = 20
gke_networking_connection_service = "servicenetworking.googleapis.com"
gke_firewall_rule           = "allow-ssh"
gke_firewall_direction      = "INGRESS"
gke_firewall_protocol       = "tcp"
gke_firewall_port           = "22"
gke_region = "us-central1"