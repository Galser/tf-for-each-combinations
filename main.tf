variable "node_list" {
  default = [
    "node1", 
    "node2",
    "node3"
  ]
}

locals {
  user_data_set = { 
    for node in var.node_list : node => setsubtract(var.node_list, [node])
  }
}

resource "null_resource" "modules-echo" {
  for_each = local.user_data_set
    provisioner "local-exec" {
      command = "echo User data for node ${each.key} will contain : ${join(",",each.value)}"
    }
}
