require 'json'

include_recipe 'rabbitmq::default'

cluster_nodes = node['rabbitmq']['clustering']['cluster_nodes']
cluster_nodes = cluster_nodes.to_json

auto_cluster_nodes = cluster_nodes
static_cluster_nodes = cluster_nodes

# Manual clustering
unless node['rabbitmq']['clustering']['use_auto_clustering']
  # Join in cluster
