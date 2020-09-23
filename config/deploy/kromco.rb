# frozen_string_literal: true

# Kromco.
server '172.16.16.4', user: 'nsld', roles: %w[app db web]
set :deploy_to, '/home/nsld/jasper_reporting_engine'
set :chruby_ruby, 'ruby-2.5.0'
