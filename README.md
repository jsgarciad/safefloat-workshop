# safefloat-workshop
Enjoy !

Before we star, we have to update terraform version. This workshop was tested on terraform version >0.13. So in order you avoid a refactor o unknown reasons, please upgrade terraform.
```bash
curl -O https://releases.hashicorp.com/terraform/0.13.0/terraform_0.13.0_linux_amd64.zip
unzip terraform_0.13.0_linux_amd64.zip
tflocation=$(which terraform)
mv $tflocation $tflocation"old"
cp terraform $tflocation
```