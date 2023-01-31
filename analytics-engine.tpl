resource "ibm_resource_instance" "instance" {
  name            = "MyServiceInstance"
  plan            = "standard-serverless-spark"
  location        = "eu-de"
  service         = "ibmanalyticsengine"
  parameters_json = <<PARAMETERS_JSON
  {
  "default_runtime": {
    "spark_version": "3.1"
    },
  "instance_home": {
    "region": "eu-de",
    "endpoint": "https://s3.direct.eu-de.cloud-object-storage.appdomain.cloud",
    "hmac_access_key": "<your-hmac-access-key",
    "hmac_secret_key": "<your-hmac-secret-key"
    },
  "default_config": {
    "key1": "value1",
    "key2": "value2"
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