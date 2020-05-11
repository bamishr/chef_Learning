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
user['rights'].each do |r|
    rabbitmq_user "set-perms-#{user['name']}-vhost-#{Array(r['vhost']).join().tr('/', '_')}" do
      user user['name']
      vhost r['vhost']
      permissions "#{r['conf']} #{r['write']} #{r['read']}"
      action :set_permissions
    end
  end
end
user['rights'].each do |r|
    rabbitmq_user "set-perms-#{user['name']}-vhost-#{Array(r['vhost']).join().tr('/', '_')}" do
      user user['name']
      vhost r['vhost']
      permissions "#{r['conf']} #{r['write']} #{r['read']}"
      action :set_permissions
    end
  end
end

node['rabbitmq']['disabled_users'].each do |user|
  rabbitmq_user "delete-#{user}" do
    user user
    action :delete
  end
end
user['rights'].each do |r|
    rabbitmq_user "set-perms-#{user['name']}-vhost-#{Array(r['vhost']).join().tr('/', '_')}" do
      user user['name']
      vhost r['vhost']
      permissions "#{r['conf']} #{r['write']} #{r['read']}"
      action :set_permissions
    end
  end
end

node['rabbitmq']['disabled_users'].each do |user|
  rabbitmq_user "delete-#{user}" do
    user user
    action :delete
  end
end
user['rights'].each do |r|
    rabbitmq_user "set-perms-#{user['name']}-vhost-#{Array(r['vhost']).join().tr('/', '_')}" do
      user user['name']
      vhost r['vhost']
      permissions "#{r['conf']} #{r['write']} #{r['read']}"
      action :set_permissions
    end
  end
end

node['rabbitmq']['disabled_users'].each do |user|
  rabbitmq_user "delete-#{user}" do
    user user
    action :delete
  end
end