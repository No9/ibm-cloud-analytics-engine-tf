resource "ibm_resource_instance" "instance" {
  name     = "example-serverless-spark-instance"
  plan     = "standard-serverless-spark"
  location = "eu-de"
  service  = "ibmanalyticsengine"
  # Depending on where you put this you may want to assign the resource group differently
  # resource_group_name = module.cs_resource_group.name
  parameters_json = <<PARAMETERS_JSON
  {
  "default_runtime": {
    "spark_version": "3.1"
    },
  "instance_home": {
    "region": "eu-de",
    "endpoint": "https://s3.direct.eu-de.cloud-object-storage.appdomain.cloud",
    "hmac_access_key": "${var.key}",
    "hmac_secret_key": "${var.secret}"
    },
  "default_config": {
    }
}
    PARAMETERS_JSON
  tags = [
    "my-tag"
  ]
  timeouts {
    create = "30m"
    update = "15m"
    delete = "15m"
  }
}
