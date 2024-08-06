terraform {
  
  required_providers{
    oci = {
        source = "oracle/oci"
    }
  }
}
provider "oci" {
  # Populate variables below if running terraform from local machine
  #  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaattsf45llvkrummdmp6kptwjsyysiwvl6m2rde3zr4kxe7v3qe6pa"
  #  user_ocid = "ocid1.user.oc1..aaaaaaaats3cwackez2277qc2c3byxw3l26qsii6jcu25p4h6or6d6wibosq"
  #  fingerprint = "39:07:c0:a0:4f:8e:72:82:f1:8c:1a:aa:65:d9:e6:1f"
  #  private_key_path = "/home/karrim_tis/.oci/oci_api_key.pem"
    region = var.region
}
