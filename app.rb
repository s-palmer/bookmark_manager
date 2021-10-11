require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'
require './lib/manager'

class BookmarkApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do    
    @manager = Manager.all
    erb :bookmarks
  end

  run! if app_file == $0
end