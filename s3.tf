resource "aws_s3_bucket" "redirect_bucket" {
  bucket_prefix = "redirect-${var.zone}"
  acl           = "public-read"

  website {
    redirect_all_requests_to = var.target_url
  }
}
