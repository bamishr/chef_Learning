# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# Set a default name
default["starter_name"] = "Sam Doe"
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
    uid       next_free_uidgroup node[:deploy][application][:group]

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
    uid       next_free_uidgroup node[:deploy][application][:group]

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
    uid       next_free_uidgroup node[:deploy][application][:group]

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
    uid       next_free_uidgroup node[:deploy][application][:group]

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
    uid       next_free_uidgroup node[:deploy][application][:group]

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

# For further information, see the Chef documentation (https://docs.chef.io/essentials_cookbook_attribute_files.html).
