data "aws_availability_zones" "azs" {
    #all_availability_zones = true # available zone is alreday given in provider.tf 
    state = "available"     
}

data "aws_vpc" "default" {
    default = true
  }

data "aws_route_table" "default" {
    vpc_id = data.aws_vpc.default.id
    filter {
      name = "association.main"
      values = ["true"]
    }
  
}