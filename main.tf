
# create OCI-Operations VCN
#resource "oci_core_virtual_network" "vcn01" {
#    compartment_id = var.compartment_ocid # "ocid1.compartment.oc1..aaaaaaaagv5v4klyoala345iniigtjpj3gw7c2but3nkm6alcgusy3poixha"
#    cidr_block = var.vcn01_cidr_block # "10.0.0.0/16"
#    dns_label =  var.vcn01_display_name # "vcn01"
#    display_name = var.vcn01_display_name # "vcn01"  
#}

# create and call module VCN 
module "vcn01" {
    source = "./vcn_module"
    cidr_block     = var.vcn01_cidr_block
    dns_label      =  var.vcn01_display_name
    compartment_id = var.compartment_ocid
    display_name   = var.vcn01_display_name
}

module "vcn02" {
    source = "./vcn_module"
    cidr_block     = "172.16.0.0/16"
    dns_label      =  "vcn02"
    compartment_id = var.compartment_ocid
    display_name   = "vnc02"
}