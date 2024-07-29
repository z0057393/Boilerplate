

resource "ovh_cloud_project_kube" "cluster" {
   service_name = "${var.project_id}"
   name         = "${var.cluster_name}"
   region       = "${var.region}"
}

resource "ovh_cloud_project_kube_nodepool" "node_pool" {
   service_name  = "${var.project_id}"
   kube_id       = ovh_cloud_project_kube.cluster.id
   name          = "${var.pool_name}"
   flavor_name   = "${var.flavor_name}"
   desired_nodes = var.nodes[0].desired_nodes
   max_nodes     = var.nodes[0].max_nodes
   min_nodes     = var.nodes[0].min_nodes
}


resource "local_file" "kubeconfig" {
  filename = "${var.kubeconfig_path}"
  content  = ovh_cloud_project_kube.cluster.kubeconfig
}


