require 'mongo_mapper'

module Connect4
  class App < Sinatra::Base
    get '/' do
      erb :index
    end
    
    get '/game/:id' do
      # Do something
    end
  end
end