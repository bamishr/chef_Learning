lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "chef-config/version"

Gem::Specification.new do |spec|
  spec.name          = "chef-config"
  spec.version       = ChefConfig::VERSION
  spec.authors       = ["Adam Jacob"]
  spec.email         = ["adam@chef.io"]

  spec.summary       = %q{Chef Infra's default configuration and config loading library}
  spec.homepage      = "https://github.com/chef/chef"
  spec.license       = "Apache-2.0"

  spec.required_ruby_version = ">= 2.6.0"
