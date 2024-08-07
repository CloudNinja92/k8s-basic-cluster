resource "null_resource" "get_credentials" {
  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials primary --zone ${var.zone} --project ${var.project}"
  }

  depends_on = [google_container_cluster.primary]
}