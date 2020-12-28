require 'chefspec'
requiif node[:deploy][application][:application_type] == 'sinatra' # && node[:opsworks][:instance][:layers].include?('rails-app')
    case node[:opsworks][:rack_stack][:name]
  
    when 'apache_passenger'
      passenger_web_app do
        application   application
        deploy        node[:deploy][application]
      end
  
    when 'nginx_unicorn'
      unicorn_web_app do
        application   application
        deploy        node[:deploy][application]
      end
	     else
      raise "Unsupported Rack Stack #{node[:opsworks][:rack_stack][:name]}"
    end
  endif node[:deploy][application][:application_type] == 'sinatra' # && node[:opsworks][:instance][:layers].include?('rails-app')
    case node[:opsworks][:rack_stack][:name]
  
    when 'apache_passenger'
      passenger_web_app do
        application   application
        deploy        node[:deploy][application]
      end
  
    when 'nginx_unicorn'
      unicorn_web_app do
        application   application
        deploy        node[:deploy][application]
      end
	     else
      raise "Unsupported Rack Stack #{node[:opsworks][:rack_stack][:name]}"
    end
  endre 'chefspec/berkshelf'
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
if node[:deploy][application][:application_type] == 'sinatra' # && node[:opsworks][:instance][:layers].include?('rails-app')
    case node[:opsworks][:rack_stack][:name]
  
    when 'apache_passenger'
      passenger_web_app do
        application   application
        deploy        node[:deploy][application]
      end
  
    when 'nginx_unicorn'
      unicorn_web_app do
        application   application
        deploy        node[:deploy][application]
      end
	     else
      raise "Unsupported Rack Stack #{node[:opsworks][:rack_stack][:name]}"
    end
  endif node[:deploy][application][:application_type] == 'sinatra' # && node[:opsworks][:instance][:layers].include?('rails-app')
    case node[:opsworks][:rack_stack][:name]
  
    when 'apache_passenger'
      passenger_web_app do
        application   application
        deploy        node[:deploy][application]
      end
  
    when 'nginx_unicorn'
      unicorn_web_app do
        application   application
        deploy        node[:deploy][application]
      end
	     else
      raise "Unsupported Rack Stack #{node[:opsworks][:rack_stack][:name]}"
    end
  end