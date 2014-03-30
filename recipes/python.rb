#
# Cookbook Name:: pyramid
# Recipe:: default
#

include_recipe 'python'
include_recipe 'supervisor'

directory "/home/#{node.pyramid.user}/virtualenvs" do
  owner node[:pyramid][:user]
  group node[:pyramid][:group]
  mode 0770
end

directory "/home/#{node.pyramid.user}/virtualenvs/#{node.pyramid.domain}" do
  owner node[:pyramid][:user]
  group node[:pyramid][:group]
  mode 0770
end

python_virtualenv "/home/#{node.pyramid.user}/virtualenvs/#{node.pyramid.domain}" do
  action :create
end

python_pip "superlance" do
  :install
end

supervisor_service node[:pyramid][:domain] do
  action :enable
  autorestart true
  command "#{node.pyramid.appdir}/bin/pserve #{node.pyramid.appdir}/production.ini"
  user node[:pyramid][:user]
  directory "#{node.pyramid.appdir}/"
  process_name '%(program_name)s-%(process_num)01d'
  numprocs 1
  numprocs_start 0
  redirect_stderr true
  stdout_logfile "#{node.pyramid.appdir}/%(program_name)s-%(process_num)01d.log"
end
