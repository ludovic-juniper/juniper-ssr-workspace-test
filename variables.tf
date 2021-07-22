##############################################################################
# Variable block - See each variable description
##############################################################################

##############################################################################
# vnf_cos_image_url - Vendor provided Ubuntu image COS url.
#                             The value for this variable is enter at offering
#                             onbaording time.This variable is hidden from the user.
##############################################################################
#variable "vnf_cos_image_url" {
#  default     = ""
#  description = "The COS image object SQL URL for Ubuntu qcow2 image."
#}

##############################################################################
# vnf_cos_image_url - Vendor provided image COS url.
#                             The value for this variable is enter at offering
#                             onbaording time.This variable is hidden from the user.
##############################################################################
variable "vnf_cos_image_url" {
#  default     = "cos://ap-geo/asloma-juniper-bucket/junos-vsrx3-x86-64-19.4R3.11.qcow2"
#  default     = "cos://eu-de/vsrx-eu-de-cos-bucket/junos-vsrx3-x86-64-21.1R1.11.qcow2"
  default     = "cos://us-south/juniper-ssr-us-south-cos-bucket/TESTVPC.128T-virtioa.qcow2"
  description = "The COS image object SQL URL for Juniper SSR 514 qcow2 image."
}


##############################################################################
# subnet_ids - Subnet where resources are to be provisioned.
##############################################################################
variable "subnet_id1"{
  default = "0727-742e8330-52c1-4c95-98e3-3d1e00ef32eb"
#  default = ""
  description =  "The id of the subnet to which Ubuntu VSI's first interface belongs to"
}

variable "subnet_id2"{
  default = "0727-2db31977-c1d0-461d-b08c-e58a09db28e5"
#  default = ""
  description = "The id of the subnet to which Ubuntu VSI's second interface belongs to"
}

variable "subnet_id3"{
  default = "0727-5f0793b8-2ca3-43f9-b50c-df0cdf586417"
#  default = ""
  description = "The id of the subnet to which Ubuntu VSI's second interface belongs to"
}

##############################################################################
# ssh_key_name - The name of the public SSH key to be used when provisining Ubuntu VSI.
##############################################################################
variable "ssh_key_name" {
  default     = "vsrx-public-ssh-key"
  #  default = ""
  description = "The name of the public SSH key to be used when provisining Ubuntu VSI."
}

##############################################################################
# vnf_vpc_image_name - The name of the Custom image to be provisioned in your IBM Cloud account.
##############################################################################
variable "vnf_vpc_image_name" {
  default     = "juniper-ssr-514-3int"
  description = "The name of the Custom image to be provisioned in your IBM Cloud account."
}

##############################################################################
# image_operating_system - Description of underlying OS of an image.
##############################################################################
variable "image_operating_system" {
  default     = "centos-7-amd64"
  description = "Description of underlying OS of an image."
}

##############################################################################
# vnf_instance_name - The name of your Ubuntu Virtual Server to be provisioned
##############################################################################
variable "vnf_instance_name" {
  default     = "juniper-ssr-514-vsi"
  description = "The name of your Ubuntu Virtual Server to be provisioned."
}

##############################################################################
# vnf_profile - The profile of compute CPU and memory resources to be used when provisioning Ubuntu VSI.
##############################################################################
variable "vnf_profile" {
  default     = "bx2-4x16"
  description = "The profile of compute CPU and memory resources to be used when provisioning Ubuntu VSI. To list available profiles, run `ibmcloud is instance-profiles`."
}

variable "region" {
  default     = "us-south"
  description = "The value of the region of VPC."
}

#####################################################################################################
# api_key - This is the ibm_cloud_api_key which should be used only while testing this code from CLI. 
# It is not needed while testing from Schematics
######################################################################################################
/*
variable "api_key" {
  default     = ""
  description = "holds the user api key"
}*/

##############################################################################
# vnf_securtiy_group - The security group to which the VSI interface belongs to.
##############################################################################
variable "vnf_security_group" {
#  default     = "ubuntu-security-group"
  default = "juniper-ssr-security-group-v0"
  description = "The security group for VNF VPC"
}