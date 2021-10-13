# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/save' do
    p params
    Bookmark.add_bookmark(name: params[:bookmark_name], url: params[:bookmark_url])
    redirect to('/')
  end

  get '/bookmarks' do
    @manager = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $PROGRAM_NAME
end
