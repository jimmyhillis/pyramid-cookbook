#
# Cookbook Name:: pyramid
# Recipe:: node
#

node.set[:nodejs][:version] = "0.10.21"
node.set[:nodejs][:checksum] = "7c125bf22c1756064f2a68310d4822f77c8134ce178b2faa6155671a8124140d"
node.set[:nodejs][:checksum_linux_x86] = "c0ed641961a5c5a4602b1316c3d3ed12b3ac330cc18abf3fb980f0b897b5b96b"
node.set[:nodejs][:checksum_linux_x64] = "2791efef0a1e9a9231b937e55e5b783146e23291bca59a65092f8340eb7c87c8"

include_recipe 'nodejs::install_from_binary'


npm_package 'grunt-cli' do
  action :install
end

npm_package 'bower' do
  action :install
end
