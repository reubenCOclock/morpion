require_relative './board.rb'
require_relative './game.rb'
require_relative './player.rb'

class Show < Board 

    def showBoard(getBoard)  
        
        
        getBoard.length.times do |i|
            puts getBoard[i][0][:value]+" "+" "+" "+getBoard[i][1][:value]+" "+" "+" "+getBoard[i][2][:value]
            puts getBoard[i][0][:position]+" "+" "+" "+getBoard[i][1][:position]+" "+" "+" "+getBoard[i][2][:position]
           
            
        end

    end 
end