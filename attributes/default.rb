# server settings
default[:pyramid][:user] = 'pyramid'
default[:pyramid][:group] = 'pyramid'
default[:pyramid][:domain] = 'pyramid.example.com'
default[:pyramid][:port] = 6543
default[:pyramid][:appdir] = '/home/pyramid/pyramid.example.com'

# database settings
default[:pyramid][:database][:username] = default[:pyramid][:user],
default[:pyramid][:database][:password] = nil,
default[:pyramid][:database][:host] = 'localhost',
default[:pyramid][:database][:database] = default[:pyramid][:domain]
