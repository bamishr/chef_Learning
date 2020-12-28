name 'webapp-linux'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures webapp-linux'
long_description 'Installs/Configures webapp-linux'
version '0.1.1'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/webapp-linux/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/webapp-linux' if respond_to?(:source_url)

# dependencies
depends 'httpd', '~> 0.4.4'
name 'webapp-linux'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures webapp-linux'
long_description 'Installs/Configures webapp-linux'
version '0.1.1'
name "starter"
description "An example Chef role"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})
name "starter"
description "An example Chef role"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})

name "starter"
description "An example Chef role"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})
group node[:deploy][application][:group]

  user node[:deploy][application][:user] do
    action    :create
    comment   "deploy user"
    uid       next_free_uid
    gid       node[:deploy][application][:group]
    home      node[:deploy][application][:home]
    supports  :manage_home => true
    shell     node[:deploy][application][:shell]
    
	user node[:deploy][application][:user] do
    action    :create
    comment   "deploy user"
    uid       next_free_uid
  
    
name "starter"
description "An example Chef role"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})
name "starter"
description "An example Chef role"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})
name "starter"
description "An example Chef role"
run_list "recipe[starter]"
group node[:deploy][application][:group]

  user node[:deploy][application][:user] do
    action    :create
    comment   "deploy user"
    uid       next_free_uid
    gid       node[:deploy][application][:group]
    home      node[:deploy][application][:home]
    supports  :manage_home => true
    shell     node[:deploy][application][:shell]
    
	user node[:deploy][application][:user] do
    action    :create
    comment   "deploy user"
    uid       next_free_uidoverride_attributes({
  "starter_name" => "khaja ibrahim",
})
name "starter"
description "An example Chef role"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})

