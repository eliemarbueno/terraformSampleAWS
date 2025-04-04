variable "tags" {
    description = "Tags to be applied to all resources"
    type        = map(string)
    default     = {
        Environment = "dev"
        Project     = "devops-na-nuvem"
    }
}

 variable "assume_role" {
    description = "Assume role for AWS provider"
    type = object({
      region = string
      role_arn = string
    })
    default = {
      region = "us-east-1"
      role_arn = "arn:aws:iam::108782078281:role/DevopsNaNuvemLive-3c16522d-7b95-4daf-a6eb-88609dc63f33"
    }
}

variable "queues" {
  type = list(object({
    name                      = string
    delay_seconds             = number
    max_message_size          = number
    message_retention_seconds = number
    receive_wait_time_seconds = number
  }))

  default = [ 
    {
    name                      = "devops-na-nuvem-queue-01"
    delay_seconds             = 90
    max_message_size          = 2048
    message_retention_seconds = 86400
    receive_wait_time_seconds = 10
  } ,
  {
    name                      = "devops-na-nuvem-queue-02"
    delay_seconds             = 90
    max_message_size          = 2048
    message_retention_seconds = 86400
    receive_wait_time_seconds = 10
  } 
  ]
}