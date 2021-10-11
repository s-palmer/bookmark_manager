require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  get '/' do
    "hello world"
  end
  run! if app_file == $0
end