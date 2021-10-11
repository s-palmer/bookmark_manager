require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    "This is a test bookmark"
  end

  run! if app_file == $0
end