
require_relative './game.rb'
require_relative './player.rb'
require_relative './board.rb'
require_relative './show.rb'


class App
def playGame

    newGame=Game.new(Player.new("player1"),Player.new("player2"))
    
    board=Board.new 

    puts "TEST GITHUB ADDD"
    getBoard=board.buildBoard(3,3)

    showBoard=Show.new
    drawBoard=showBoard.showBoard(getBoard)
    
    
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
        puts "player 2 wins"
    end 
    
    puts "would you like to play again"
    
    getDecision=gets.chomp
    
    if getDecision=="yes"
        playGame
        
    else
        return false
    end
    
    end

end
    
app=App.new 

app.playGame