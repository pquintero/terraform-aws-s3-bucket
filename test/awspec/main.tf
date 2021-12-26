module "this" {
  source = "../../"

  bucket        = random_string.this.result
  force_destroy = true

  tags = {
    Project = "titan"
  }
}