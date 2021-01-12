#
# Cookbook Name:: webapp-linux
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'httpd::default'
include_recipe 'webapp-linux::apacheold'
package node["webapp-linux"]["packagename"]  do 
  action :install
  only_if { node["platform"] == node["webapp-linux"]["platformname"]}
end
package node["webapp-linux"]["packagename"]  do 
  action :install
  only_if { node["platform"] == node["webapp-linux"]["platformname"]}
end
package node["webapp-linux"]["packagename"]  do 
  action :install
  only_if { node["platform"] == node["webapp-linux"]["platformname"]}
end
package node["webapp-linux"]["packagename"]  do 
  action :install
  only_if { node["platform"] == node["webapp-linux"]["platformname"]}
end
package node["webapp-linux"]["packagename"]  do 
  action :install
  only_if { node["platform"] == node["webapp-linux"]["platformname"]}
end
package node["webapp-linux"]["packagename"]  do 
  action :install
  only_if { node["platform"] == node["webapp-linux"]["platformname"]}
end
package node["webapp-linux"]["packagename"]  do 
  action :install
  only_if { node["platform"] == node["webapp-linux"]["platformname"]}
end
package node["webapp-linux"]["packagename"]  do 
  action :install
  only_if { node["platform"] == node["webapp-linux"]["platformname"]}
end
package node["webapp-linux"]["packagename"]  do 
  action :install
  only_if { node["platform"] == node["webapp-linux"]["platformname"]}
end
package node["webapp-linux"]["packagename"]  do 
  action :install
  only_if { node["platform"] == node["webapp-linux"]["platformname"]}
end