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

def playGame

newGame=Game.new(Player.new("player1"),Player.new("player2"))

board=Board.new
getBoard=board.buildBoard(3,3)
drawBoard=board.showBoard 


checkIfValuesFull=board.checkIfValuesFull

checkIfCombo=board.checkCombos(getBoard)

while checkIfValuesFull<9 && checkIfCombo==false
      
    newGame.launchTourPlayer1(getBoard)
    checkIfValuesFull=board.checkIfValuesFull
    checkIfCombo=board.checkCombos(getBoard)
    break if checkIfValuesFull==9
    break if checkIfCombo!=false
    newGame.launchTourPlayer2(getBoard)
    checkIfValuesFull=board.checkIfValuesFull
    checkIfCombo=board.checkCombos(getBoard)
    break if checkIfValuesFull==9
    break if checkIfCombo!=false
           
end 

if checkIfCombo[:winner]=="player1"
    puts "player 1 wins"
end


if checkIfCombo[:winner]=="player2"
    puts "player 1 wins"
end 

puts "would you like to play again"

getDecision=gets.chomp

if getDecision=="yes"
    playGame
    
else
    return false
end

end

playGame


