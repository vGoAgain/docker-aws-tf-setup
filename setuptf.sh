curl -fsSL https://releases.hashicorp.com/terraform/1.9.5/terraform_1.16.4_linux_amd64.zip -o tf.zip
unzip tf.zip
sudo mv terraform /usr/local/bin/
terraform -v
