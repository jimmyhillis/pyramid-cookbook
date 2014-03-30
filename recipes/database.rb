#
# Cookbook Name:: pyramid
# Recipe:: database
#

package 'libmysqlclient-dev'
package 'python-dev'

include_recipe 'mysql::client'
include_recipe 'mysql::ruby'
include_recipe "mysql::server"

mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node['mysql']['server_root_password']
 }

mysql_database node[:pyramid][:database][:database] do
  connection  mysql_connection_info
  action      :create
end

mysql_database_user node[:pyramid][:database][:user] do
  connection      mysql_connection_info
  password        node[:pyramid][:database][:password]
  host            node[:pyramid][:database][:host]
  database_name   node[:pyramid][:database][:database]
  action          :create
end

mysql_database_user node[:pyramid][:database][:user] do
  connection      mysql_connection_info
  database_name   node[:pyramid][:database][:database]
  privileges      [:all]
  action          :grant
end
