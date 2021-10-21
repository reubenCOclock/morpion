require_relative './board.rb'
require_relative './player.rb'

class Game 
    attr_accessor :player1
    attr_accessor :player2
    def initialize(player1,player2)
        @player1=player1
        @player2=player2
    end
    
    def launchTourPlayer1(board)
        
         @player1.chooseValue(board)
         
    end

    def launchTourPlayer2(board)
        
        @player2.chooseValue(board)
        

   end
end 



