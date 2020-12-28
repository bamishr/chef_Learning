#
# Cookbook Name:: .
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe '.::apacheold' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end

require 'spec_helper'

describe '.::apacheold' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
spec.metadata = {
    "bug_tracker_uri" => "https://github.com/chef/chef/issues",
    "changelog_uri" => "https://github.com/chef/chef/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://github.com/chef/chef/tree/master/chef-config/README.md",
    "homepage_uri" => "https://github.com/chef/chef/tree/master/chef-config",
    "source_code_uri" => "https://github.com/chef/chef/tree/master/chef-config",
  }
  spec.require_paths = ["lib"]

  spec.add_dependency "chef-utils", "= #{ChefConfig::VERSION}"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "mixlib-config", ">= 2.2.12", "< 4.0"
  spec.add_dependency "fuzzyurl"
  spec.add_dependency "addressable"
  spec.add_dependency "tomlrb", "~> 1.2"
   spec.add_dependency "chef-utils", "= #{ChefConfig::VERSION}"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "mixlib-config", ">= 2.2.12", "< 4.0"
  spec.add_dependency "fuzzyurl"
  spec.add_dependency "addressable"
  spec.add_dependency "tomlrb", "~> 1.2"

  spec.files = %w{Rakefile LICENSE} + Dir.glob("*.gemspec") +
    Dir.glob("{lib,spec}/**/*", File::FNM_DOTMATCH).reject { |f| File.directory?(f) }

  spec.bindir        = "bin"
  spec.executables   = []
end
require 'spec_helper'

describe '.::apacheold' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
spec.metadata = {
    "bug_tracker_uri" => "https://github.com/chef/chef/issues",
    "changelog_uri" => "https://github.com/chef/chef/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://github.com/chef/chef/tree/master/chef-config/README.md",
    "homepage_uri" => "https://github.com/chef/chef/tree/master/chef-config",
    "source_code_uri" => "https://github.com/chef/chef/tree/master/chef-config",
  }
  spec.require_paths = ["lib"]

  spec.add_dependency "chef-utils", "= #{ChefConfig::VERSION}"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "mixlib-config", ">= 2.2.12", "< 4.0"
  spec.add_dependency "fuzzyurl"
  spec.add_dependency "addressable"
  spec.add_dependency "tomlrb", "~> 1.2"
   spec.add_dependency "chef-utils", "= #{ChefConfig::VERSION}"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "mixlib-config", ">= 2.2.12", "< 4.0"
  spec.add_dependency "fuzzyurl"
  spec.add_dependency "addressable"
  spec.add_dependency "tomlrb", "~> 1.2"

  spec.files = %w{Rakefile LICENSE} + Dir.glob("*.gemspec") +
    Dir.glob("{lib,spec}/**/*", File::FNM_DOTMATCH).reject { |f| File.directory?(f) }

  spec.bindir        = "bin"
  spec.executables   = []
endspec.metadata = {
    "bug_tracker_uri" => "https://github.com/chef/chef/issues",
    "changelog_uri" => "https://github.com/chef/chef/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://github.com/chef/chef/tree/master/chef-config/README.md",
    "homepage_uri" => "https://github.com/chef/chef/tree/master/chef-config",
    "source_code_uri" => "https://github.com/chef/chef/tree/master/chef-config",
  }
  spec.require_paths = ["lib"]

  spec.add_dependency "chef-utils", "= #{ChefConfig::VERSION}"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "mixlib-config", ">= 2.2.12", "< 4.0"
  spec.add_dependency "fuzzyurl"
  spec.add_dependency "addressable"
  spec.add_dependency "tomlrb", "~> 1.2"
   spec.add_dependency "chef-utils", "= #{ChefConfig::VERSION}"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "mixlib-config", ">= 2.2.12", "< 4.0"
  spec.add_dependency "fuzzyurl"
  spec.add_dependency "addressable"
  spec.add_dependency "tomlrb", "~> 1.2"

  spec.files = %w{Rakefile LICENSE} + Dir.glob("*.gemspec") +
    Dir.glob("{lib,spec}/**/*", File::FNM_DOTMATCH).reject { |f| File.directory?(f) }

  spec.bindir        = "bin"
  spec.executables   = []
endspec.metadata = {
    "bug_tracker_uri" => "https://github.com/chef/chef/issues",
    "changelog_uri" => "https://github.com/chef/chef/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://github.com/chef/chef/tree/master/chef-config/README.md",
    "homepage_uri" => "https://github.com/chef/chef/tree/master/chef-config",
    "source_code_uri" => "https://github.com/chef/chef/tree/master/chef-config",
  }
  spec.require_paths = ["lib"]

  spec.add_dependency "chef-utils", "= #{ChefConfig::VERSION}"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "mixlib-config", ">= 2.2.12", "< 4.0"
  spec.add_dependency "fuzzyurl"
  spec.add_dependency "addressable"
  spec.add_dependency "tomlrb", "~> 1.2"
   spec.add_dependency "chef-utils", "= #{ChefConfig::VERSION}"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "mixlib-config", ">= 2.2.12", "< 4.0"
  spec.add_dependency "fuzzyurl"
  spec.add_dependency "addressable"
  spec.add_dependency "tomlrb", "~> 1.2"

  spec.files = %w{Rakefile LICENSE} + Dir.glob("*.gemspec") +
    Dir.glob("{lib,spec}/**/*", File::FNM_DOTMATCH).reject { |f| File.directory?(f) }

  spec.bindir        = "bin"
  spec.executables   = []
endspec.metadata = {
    "bug_tracker_uri" => "https://github.com/chef/chef/issues",
    "changelog_uri" => "https://github.com/chef/chef/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://github.com/chef/chef/tree/master/chef-config/README.md",
    "homepage_uri" => "https://github.com/chef/chef/tree/master/chef-config",
    "source_code_uri" => "https://github.com/chef/chef/tree/master/chef-config",
  }
  spec.require_paths = ["lib"]

  spec.add_dependency "chef-utils", "= #{ChefConfig::VERSION}"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "mixlib-config", ">= 2.2.12", "< 4.0"
  spec.add_dependency "fuzzyurl"
  spec.add_dependency "addressable"
  spec.add_dependency "tomlrb", "~> 1.2"
   spec.add_dependency "chef-utils", "= #{ChefConfig::VERSION}"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "mixlib-config", ">= 2.2.12", "< 4.0"
  spec.add_dependency "fuzzyurl"
  spec.add_dependency "addressable"
  spec.add_dependency "tomlrb", "~> 1.2"

  spec.files = %w{Rakefile LICENSE} + Dir.glob("*.gemspec") +
    Dir.glob("{lib,spec}/**/*", File::FNM_DOTMATCH).reject { |f| File.directory?(f) }

  spec.bindir        = "bin"
  spec.executables   = []
end