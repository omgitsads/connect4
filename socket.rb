require 'rubygems'
require 'em-websocket'
require 'lib/connect4'

@game = Connect4::Game.new

EventMachine::WebSocket.start(:host => "0.0.0.0", :port => 8080) do |ws|
  ws.onopen do
    ws.send "Welcome"
  end
  
  ws.onmessage do |msg|
    puts "Received message: #{msg}"
  end
  
  ws.onclose do
    ws.send "Goodbye"
  end
end