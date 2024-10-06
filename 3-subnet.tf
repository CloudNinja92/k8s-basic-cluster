resource "google_compute_subnetwork" "private" {
    name =          "private"
    ip_cidr_range = "10.24.0.0/24"
    region =        "us-central1"
    network =        google_compute_network.cluster-vpc.id
    private_ip_google_access = true

    secondary_ip_range {
      range_name    = "k8s-pod-range"
      ip_cidr_range = "10.45.0.0/14"
    }

    secondary_ip_range {
      range_name    = "k8s-service-range"
      ip_cidr_range = "10.54.0.0/20"
   }
}
