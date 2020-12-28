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
    gid       node[:deploy][application][:group]
    home      node[:deploy][application][:home]
    supports  :manage_home => true
    shell     node[:deploy][application][:shell]
    user node[:deploy][application][:user] do
    action    :create
    comment   "deploy user"
    uid       next_free_uid
    gid       node[:deploy][application][:group]
    home      node[:deploy][application][:home]
    supports  :manage_home => true
    shell     node[:deploy][application][:shell]
    
name "starter"
description "An example Chef role"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})
