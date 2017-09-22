#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#
if node['platform_family'] == 'rhel'
	var_package = 'httpd'
elsif node['platform_family'] == 'debian'
	var_package = 'apache2'
end

package 'apache' do
	package_name var_package
	action :install
end

service 'apache' do
	service_name var_package
	action [:enable, :start]
end

#include_recipe 'apache::website'
