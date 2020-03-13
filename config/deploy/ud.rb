# frozen_string_literal: true

server '172.17.2.243', user: 'nspack', roles: %w[app db web]
set :deploy_to, '/home/nspack/jasper_reporting_engine'
set :chruby_ruby, 'ruby-2.5.5'
