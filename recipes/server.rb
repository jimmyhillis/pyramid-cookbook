#
# Cookbook Name:: pyramid
# Recipe:: server
#

include_recipe 'nginx'

# disable default site

nginx_site 'default' do
  enable false
end

# nginx configuration

template "#{node.nginx.dir}/sites-available/#{node.pyramid.domain}.conf" do
  source "nginx.conf.erb"
  mode 0777
  owner node.nginx.user
  group node.nginx.user
end

nginx_site "#{node.pyramid.domain}.conf"
