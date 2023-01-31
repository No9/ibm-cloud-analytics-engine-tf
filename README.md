# ibm-cloud-analytics-engine-tf
A sample terraform script to provision serverless spark on IBM Cloud

export your keys as vars
```
export TF_VAR_key=<the_key>
export TF_VAR_secret=<the secret>
export IC_API_KEY="IBM Cloud API Key"

terraform init

terraform apply
```

This will generat the following output:
```
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```