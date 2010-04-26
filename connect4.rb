require 'mongomapper'

module Connect4
  class App < Sinatra::Base
    get '/game/:id' do
      # Do something
    end
  end
end