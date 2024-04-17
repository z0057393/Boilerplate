resource "ovh_cloud_project_kube" "my_kube_cluster" {
   service_name = "${var.service_name}"
   name         = "my_kube_cluster"
   region       = "GRA11"
}

resource "ovh_cloud_project_kube_nodepool" "node_pool" {
   service_name  = "${var.service_name}"
   kube_id       = ovh_cloud_project_kube.my_kube_cluster.id
   name          = "my-pool" 
   flavor_name   = "c3-4"
   desired_nodes = 1
   max_nodes     = 1
   min_nodes     = 1
}


resource "local_file" "kubeconfig" {
  filename = "${var.kubeconfig}"
  content  = ovh_cloud_project_kube.my_kube_cluster.kubeconfig
}
