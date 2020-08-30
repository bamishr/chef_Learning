require 'json'

include_recipe 'rabbitmq::default'

cluster_nodes = node['rabbitmq']['clustering']['cluster_nodes']
cluster_nodes = cluster_nodes.to_json

auto_cluster_nodes = cluster_nodes
static_cluster_nodes = cluster_nodes

# Manual clustering
unless node['rabbitmq']['clustering']['use_auto_clustering']
  # Join in cluster
 rabbitmq_cluster auto_cluster_nodes do
    cluster_name node['rabbitmq']['clustering']['cluster_name']
    action :join
  end
end

# Set cluster name : It will be skipped once same cluster name has been set in the cluster.
rabbitmq_cluster static_cluster_nodes do
  cluster_name node['rabbitmq']['clustering']['cluster_name']
  action [:set_cluster_name, :change_cluster_node_type]
end
# Manual clustering
unless node['rabbitmq']['clustering']['use_auto_clustering']
  # Join in cluster
 rabbitmq_cluster auto_cluster_nodes do
    cluster_name node['rabbitmq']['clustering']['cluster_name']
    action :join
  end
end

# Set cluster name : It will be skipped once same cluster name has been set in the cluster.
rabbitmq_cluster static_cluster_nodes do
  cluster_name node['rabbitmq']['clustering']['cluster_name']
  action [:set_cluster_name, :change_cluster_node_type]
end
# Manual clustering
unless node['rabbitmq']['clustering']['use_auto_clustering']
  # Join in cluster
 rabbitmq_cluster auto_cluster_nodes do
    cluster_name node['rabbitmq']['clustering']['cluster_name']
    action :join
  end
end

# Set cluster name : It will be skipped once same cluster name has been set in the cluster.
rabbitmq_cluster static_cluster_nodes do
  cluster_name node['rabbitmq']['clustering']['cluster_name']
  action [:set_cluster_name, :change_cluster_node_type]
end