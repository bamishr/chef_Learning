node[:deploy].each do |application, _|

  Chef::Log.info "[recipe sinatra::deploy] node[:deploy][application][:deploy_to] == '#{node[:deploy][application][:deploy_to]}'"
  
  directory "#{node[:deploy][application][:deploy_to]}" do
    group       node[:deploy][application][:group]
    owner       node[:deploy][application][:user]
    mode        "0775"
    action      :create
    recursive   true
  end
