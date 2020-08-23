include_attribute "sinatra::configure"


node[:deploy].each do |application, _|
  default[:sinatra][application][:restart_command] = node[:opsworks][:rack_stack][:restart_command]
  default[:sinatra][application][:bundle_command] = node[:opsworks][:rack_stack][:bundle_command]
  default[:deploy][application][:bundle_command] = node[:opsworks][:rack_stack][:bundle_command]
  default[:sinatra][application][:restart_command] = node[:opsworks][:rack_stack][:restart_command]
  default[:sinatra][application][:bundle_command] = node[:opsworks][:rack_stack][:bundle_command]
  default[:deploy][application][:bundle_command] = node[:opsworks][:rack_stack][:bundle_command]default[:sinatra][application][:restart_command] = node[:opsworks][:rack_stack][:restart_command]
  default[:sinatra][application][:bundle_command] = node[:opsworks][:rack_stack][:bundle_command]
  default[:deploy][application][:bundle_command] = node[:opsworks][:rack_stack][:bundle_command]
  node['rabbitmq']['virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :add
  end
end

node['rabbitmq']['disabled_virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :delete
  end
end
node['rabbitmq']['virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :add
  end
end

node['rabbitmq']['disabled_virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :delete
  end
end
end

node['rabbitmq']['disabled_virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :delete
  end
end
node['rabbitmq']['virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :add
  end
end

node['rabbitmq']['disabled_virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :delete
  end
end
end

node['rabbitmq']['disabled_virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :delete
  end
end
node['rabbitmq']['virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :add
  end
end

node['rabbitmq']['disabled_virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :delete
  end
end
end

node['rabbitmq']['disabled_virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :delete
  end
end
node['rabbitmq']['virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :add
  end
end

node['rabbitmq']['disabled_virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :delete
  end
end
end

node['rabbitmq']['disabled_virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :delete
  end
end
node['rabbitmq']['virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :add
  end
end

node['rabbitmq']['disabled_virtualhosts'].each do |virtualhost|
  rabbitmq_vhost virtualhost do
    action :delete
  end
end
  
