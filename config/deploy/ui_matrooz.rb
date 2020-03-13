# frozen_string_literal: true

server '192.168.100.241', user: 'nspack', roles: %w[app db web]
set :deploy_to, '/home/nspack/jasper_reporting_engine'
set :chruby_ruby, 'ruby-2.5.5'
