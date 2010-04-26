require 'json'
module Connect4
  class MessageHandler
    def game
      @game ||= Connect4::Game.new
    end
    
    def handle(message)
      puts message.inspect
      message = JSON.parse(message)
      if message["action"] == "subscribe"
        subscribe(message["user"])
      end
    end
    
    private
      def subscribe(user)
        puts "Added #{user}"
      end
  end
end