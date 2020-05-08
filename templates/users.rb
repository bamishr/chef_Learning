include_recipe 'rabbitmq::default'
include_recipe 'rabbitmq::vhosts'

node['rabbitmq']['enabled_users'].each do |user|
  rabbitmq_user "add-#{user['name']}" do
    user user['name']
    password user['password']
    action :add

    notifies :set_tags, "rabbitmq_user[set-tags-#{user['name']}]", :immediately
  end
  rabbitmq_user "set-tags-#{user['name']}" do
    user user['name']
    tag user['tag']
    action :set_tags
  end
