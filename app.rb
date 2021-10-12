# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'
require './lib/manager'

class BookmarkApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/save' do
    p params
    Manager.add_bookmark(params[:bookmark_url])
    redirect to('/')
  end

  get '/bookmarks' do
    @manager = Manager.all
    erb :bookmarks
  end

  run! if app_file == $PROGRAM_NAME
end
