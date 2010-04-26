require 'rubygems'
require 'mongo_mapper'
require 'lib/connect4'

module Connect4
  class App < Sinatra::Base
    get '/' do
      erb :index
    end
    
    get '/hello' do
      Connect4::Base.say_something
    end
    
    get '/game/:id' do
      # Do something
    end
  end
end