require './environment'
require 'pry'



module FormsLab
  class App < Sinatra::Base


    get '/' do
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |atts|
        Ship.new(atts)
      end
      @ships = Ship.all
      erb :'pirates/show'
      
    end






    # code other routes/actions here

  end
end
