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
	    elsif node[:deploy][application][:scm][:scm_type].to_s == 'archive'
      repository = prepare_archive_checkouts(node[:deploy][application][:scm])
      node[:deploy][application][:scm] = {
        :scm_type =>    'git',
        :repository =>  repository
      }
    
    elsif node[:deploy][application][:scm][:scm_type].to_s == 's3'
      repository = prepare_s3_checkouts(node[:deploy][application][:scm])
      node[:deploy][application][:scm] = {
        :scm_type =>    'git',
        :repository =>  repository
      }
    end
  end
  Chef::Log.debug("Checking out source code of application #{application} with type #{node[:deploy][application][:application_type]}")

  directory "#{node[:deploy][application][:deploy_to]}/shared/cached-copy" do
    recursive   true
    action      :delete
    only_if     { node[:deploy][application][:delete_cached_copy] }
  end

  ruby_block "change HOME to #{node[:deploy][application][:home]} for source checkout" do
    block do
      ENV['HOME'] = "#{node[:deploy][application][:home]}"
    end
  end
    Chef::Log.debug("[sinatra] Running 'deploy' operation and will restart with `echo 'sinatra restart' && sleep #{node[:deploy][application][:sleep_before_restart]} && #{node[:sinatra][application][:restart_command]}`")

  # setup deployment & checkout
  if node[:deploy][application][:scm]
    deploy node[:deploy][application][:deploy_to] do
      repository              node[:deploy][application][:scm][:repository]
      user                    node[:deploy][application][:user]
      revision                node[:deploy][application][:scm][:revision]
      migrate                 node[:deploy][application][:migrate]
      migration_command       node[:deploy][application][:migrate_command]
      environment             node[:deploy][application][:environment]
      symlink_before_migrate( node[:deploy][application][:symlink_before_migrate] )
      action                  node[:deploy][application][:action]

      # This is buggy with this version of chef, so we'll duplicate a little and manually call restart below (L156)
      # if node[:sinatra][application][:restart_command]
      #   restart_command       "echo 'sinatra restart' && sleep #{node[:deploy][application][:sleep_before_restart]} && #{node[:sinatra][application][:restart_command]}"
      # end