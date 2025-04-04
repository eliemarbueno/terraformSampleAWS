terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.93"
        }
    }
}

provider "aws" {
    region = var.assume_role.region
    
    assume_role {
        role_arn = var.assume_role.role_arn
    }
    
    #not using credentials here. 
    # access_key = ""
    # secret_key = ""
    # token = ""
    #DevopsNaNuvemLive-3c16522d-7b95-4daf-a6eb-88609dc63f33

     default_tags {
        tags = var.tags
    }
}