# Pyramid Cookbook

Deploy requirements for a buildout based Pyramid python web application.

## Requirements

Cookbooks:

- git
- mysql
- nginx
- nodejs
- npm

## Usage

Example Vagrantfile for chef solo provided for launching a Pyramid application.

## Attributes

- `default[:pyramid][:user]` - system user to create and run website. default is `pyramid`
- `default[:pyramid][:group]` - system group to create and apply to website files. default is `pyramid`
- `default[:pyramid][:domain]` - domain for nginx configuration. default is `pyramid.example.com`
- `default[:pyramid][:port]` - port for pyramid web server. default is `6543`
- `default[:pyramid][:appdir]` - location to host pyramid website code. default is `/home/pyramid/pyramid.example.com`
- `default[:pyramid][:node_version]` - nodejs version to install into repo. default is `1.10.26`

## Recipes

### default

Install all dependencies (python, nodejs, nginx, git, mysql) and setup server for application deployment.

### node

Install nodejs + npm as well as front end requirements (grunt, bower, etc.)

### server

Install nginx + git and setup required users and directories.

## Author

Author:: Jimmy Hillis (jimmy@meerkats.com.au)
