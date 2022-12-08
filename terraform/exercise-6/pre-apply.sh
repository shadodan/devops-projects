#!/bin/bash

terraform init
terraform validate
terraform fmt &> /dev/null
terraform plan