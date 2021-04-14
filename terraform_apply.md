## Terraform apply


```
terraform apply --auto-approve
null_resource.modules-echo["node2"]: Creating...
null_resource.modules-echo["node3"]: Creating...
null_resource.modules-echo["node1"]: Creating...
null_resource.modules-echo["node3"]: Provisioning with 'local-exec'...
null_resource.modules-echo["node2"]: Provisioning with 'local-exec'...
null_resource.modules-echo["node1"]: Provisioning with 'local-exec'...
null_resource.modules-echo["node2"] (local-exec): Executing: ["/bin/sh" "-c" "echo User data for node node2 will contain : node1,node3"]
null_resource.modules-echo["node1"] (local-exec): Executing: ["/bin/sh" "-c" "echo User data for node node1 will contain : node2,node3"]
null_resource.modules-echo["node3"] (local-exec): Executing: ["/bin/sh" "-c" "echo User data for node node3 will contain : node1,node2"]
null_resource.modules-echo["node1"] (local-exec): User data for node node1 will contain : node2,node3
null_resource.modules-echo["node1"]: Creation complete after 0s [id=6591285916678687221]
null_resource.modules-echo["node2"] (local-exec): User data for node node2 will contain : node1,node3
null_resource.modules-echo["node3"] (local-exec): User data for node node3 will contain : node1,node2
null_resource.modules-echo["node2"]: Creation complete after 0s [id=4017606780205824024]
null_resource.modules-echo["node3"]: Creation complete after 0s [id=7937913147562014309]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```
