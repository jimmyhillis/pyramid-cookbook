name             'pyramid'
maintainer       'Jimmy Hillis'
maintainer_email 'jimmy@hillis.me'
license          'MIT'
description      'Installs and configures a Python Pyramid applications'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'git'
depends 'nginx'
depends 'nodejs'
depends 'npm'