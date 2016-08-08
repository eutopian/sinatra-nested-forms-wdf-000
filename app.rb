require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

  get '/' do
    erb :root
  end

  get '/new' do
    erb :'pirates/new'
  end

  post '/pirates' do
    @pirate_name = params[:pirate][:name]
    @pirate_weight = params[:pirate][:weight]
    @pirate_height = params[:pirate][:height]
    @ship1 = params[:pirate][:ships][0]
    @ship2 = params[:pirate][:ships][1]
    erb :'pirates/show'
  end

  end
end
