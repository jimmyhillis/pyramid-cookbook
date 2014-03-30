#
# Cookbook Name:: pyramid
# Recipe:: default
#

include_recipe 'apt'
include_recipe 'build-essential'

package 'git'

include_recipe 'pyramid::user'
include_recipe 'pyramid::node'
include_recipe 'pyramid::server'
include_recipe 'pyramid::database'
