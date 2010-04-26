module Connect4
  class MessageHandler
    def game
      @game ||= Connect4::Game.new
    end
    
    def handle(message)
      # do something
    end
  end
end