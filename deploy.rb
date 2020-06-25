node[:deploy].each do |application, _|

  Chef::Log.info "[recipe sinatra::deploy] node[:deploy][application][:deploy_to] == '#{node[:deploy][application][:deploy_to]}'"
  
  directory "#{node[:deploy][application][:deploy_to]}" do
    group       node[:deploy][application][:group]
    owner       node[:deploy][application][:user]
    mode        "0775"
    action      :create
    recursive   true
  end
if node[:deploy][application][:scm]
    ensure_scm_package_installed(node[:deploy][application][:scm][:scm_type])
    
    if node[:deploy][application][:scm][:scm_type].to_s == 'git'
      prepare_git_checkouts(
        :user =>    node[:deploy][application][:user],
        :group =>   node[:deploy][application][:group],
        :home =>    node[:deploy][application][:home],
        :ssh_key => node[:deploy][application][:scm][:ssh_key]
      ) 
	   elsif node[:deploy][application][:scm][:scm_type].to_s == 'svn'
      prepare_svn_checkouts(
        :user =>        node[:deploy][application][:user],
        :group =>       node[:deploy][application][:group],
        :home =>        node[:deploy][application][:home],
        :deploy =>      node[:deploy],
        :application => application
      ) 