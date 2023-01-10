# frozen_string_literal: true

require_relative './store'
require 'sinatra'

# Main Upfront API Core
#
# Rubocop screams if docstring is not given...)
class App < Sinatra::Base

  enable :sessions, :logging
  set :run, true
  set :sessions, expire_after: 2592000, domain: 'upfront.local'
  set :root, File.dirname(__FILE__)
  set port: config.database_port

  configure :production, :development, :test do
    enable :logging
  end

  if config.mode == 'production'
    before do
      auth = env['HTTP_AUTHORIZATION']
      unless auth&.match(/#{config.key}/)
        response.headers['WWW-Authenticate'] = 'Key realm="User Realm"'
        halt 401
      end
    end
  end

  # Main runner
  run! if app_file == $0
end
