require 'rubygems'
require 'em-websocket'
require 'lib/connect4'

@message_handler = Connect4::MessageHandler.new


EventMachine::WebSocket.start(:host => "0.0.0.0", :port => 8080) do |ws|
  ws.onopen do
    ws.send "Welcome"
  end
  
  ws.onmessage do |msg|
    ws.send(@message_handler.handle(msg))
  end
  
  ws.onclose do
    ws.send "Goodbye"
  end
end