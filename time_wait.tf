resource "null_resource" "previous" {}

resource "time_sleep" "wait_180_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "180s"
}