provider "aws" {
    region = "me-south-1"
}

 module "wills_webserver" {
   source = "git::ssh://${{ secrets.GH_APP_CREDENTIALS_TOKEN }}:ghs_XmGSgzxEiavQhb5BUHKuQkwWHYLxR92L5JCG@github.com/modules.git//modules/webserver?ref=main"
   webserver_name = "Will"
   ami = "ami-0b4946d7420c44be4"
   instance_type = "t2.medium"
 }
