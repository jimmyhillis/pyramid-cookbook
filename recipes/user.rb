#
# Cookbook Name:: pyramid
# Recipe:: user
#

# create user and group

group node[:pyramid][:group]

user node[:pyramid][:user] do
  group node[:pyramid][:group]
  system true
  supports :manage_home => true
  home "/home/#{node.pyramid.user}"
  shell '/bin/bash'
end

# setup working directory for application

directory node[:pyramid][:appdir] do
  owner node[:pyramid][:user]
  group node[:pyramid][:group]
  action :create
end
