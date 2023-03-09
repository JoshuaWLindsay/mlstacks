# set up local docker client to access the newly created registry
resource "null_resource" "configure-local-docker" {
  count = var.enable_container_registry ? 1 : 0
  provisioner "local-exec" {
    command = "gcloud auth configure-docker --project ${var.project_id}"
  }

}