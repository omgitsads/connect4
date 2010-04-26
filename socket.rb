require 'rubygems'
require 'em-websocket'

@game = Connect4::Game.new

EventMachine::WebSocket.start(:host => "0.0.0.0", :port => 8080) do |ws|
  ws.onopen do
  end
  
  ws.onmessage do
    ws.send "Hello There!"
  end
  
  ws.onclose do
    puts "WebSocket closed"
  end
end