variable "project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "gke_network_name" {
  type        = string
  description = "GKE VPC Name"
}
variable "vpc_auto_create_subnetworks" {
  type        = bool
  description = "VPC Autocreate subnetwork flag"
}
variable "vpc_mtu" {
  type        = number
  description = "VPC MTU Value"
}
variable "gke_subnetwork_name" {
  type        = string
  description = "GKE Subnetwork Name"
}
variable "gke_subnet_ip" {
  type        = string
  description = "GKE Subnetwork IP"
}
variable "gke_pod_range" {
  type        = string
  description = "GKE Pod Range Name"
}
variable "gke_service_range" {
  type        = string
  description = "GKE Service Range Name"
}
variable "gke_ip_cidr_range_pod" {
  type        = string
  description = "GKE ip_cidr Pod Range"
}
variable "gke_ip_cidr_range_service" {
  type        = string
  description = "GKE ip_cidr Service Range"
}
variable "gke_firewall_rule" {
  type        = string
  description = "GCE Firewall Rule"
}
variable "gke_firewall_direction" {
  type        = string
  description = "GCE Firewall Direction"
}
variable "gke_firewall_protocol" {
  type        = string
  description = "GCE Firewall Protocol"
}
variable "gke_firewall_port" {
  type        = string
  description = "GCE Firewall Port"
}
variable "gke_region" {
  type        = string
  description = "GCE Region"
}