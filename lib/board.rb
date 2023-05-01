class Board 
    attr_accessor :board

    def buildBoard(cols,rows)
        @board=[]
        letters=["a","b","c"]
        
        cols.times do |i|
            gameRows=[]
            counter=0
            rows.times do |j|
                counter+=1
                gameRows.push({"position": letters[i]+counter.to_s,"value": "nil","player": "nil"})    
                puts "get J" 
                puts j
                puts "Je suis invité maintenant!"
            end 
            @board.push(gameRows)
        end 
        return @board
    end 

    def showBoard  
        getBoard=@board
        
        getBoard.length.times do |i|
            puts getBoard[i][0][:value]+" "+" "+" "+getBoard[i][1][:value]+" "+" "+" "+getBoard[i][2][:value]
            puts getBoard[i][0][:position]+" "+" "+" "+getBoard[i][1][:position]+" "+" "+" "+getBoard[i][2][:position]
           
            
        end

    end 

    def modifyBoard(newBoard)
        @board=newBoard
    end 

    def checkIfValuesFull 
       counter=0
        @board.length.times do |i|
            @board[i].length.times do |j|
                if @board[i][j][:value]!="nil"
                   counter+=1
                end
            end
        end 

        puts "GET COUNTER"

        puts counter

        if counter==@board.length*3
            puts "COUNTER IS EQUAL TO 9"
            return counter
        else 
            return counter
        end

    end 

    def checkCombos(arr)
        
        winningPlayer=false

        if arr[0][0][:value]=="x" && arr[0][1][:value]=="x" && arr[0][2][:value]=="x"
            winningPlayer={winner:"player1"}
        end

        if arr[0][0][:value]=="o" && arr[0][1][:value]=="o" && arr[0][2][:value]=="o"
            winningPlayer={winner:"player2"}
        end

        if arr[1][0][:value]=="x" && arr[1][1][:value]=="x" && arr[1][2][:value]=="x"
            winningPlayer={winner:"player1"}
        end

        if arr[1][0][:value]=="o" && arr[1][1][:value]=="o" && arr[1][2][:value]=="o"
            winningPlayer={winner:"player2"}
        end

        if arr[2][0][:value]=="x" && arr[2][1][:value]=="x" && arr[2][2][:value]=="x"
            winningPlayer={winner:"player1"}
        end

        if arr[2][0][:value]=="o" && arr[2][1][:value]=="o" && arr[2][2][:value]=="o"
            winningPlayer={winner:"player2"}
        end



        if arr[0][0][:value]=="x" && arr[1][0][:value]=="x" && arr[2][0][:value]=="x"
            winningPlayer={winner:"player1"}
        end

        if arr[0][0][:value]=="o" && arr[1][0][:value]=="o" && arr[2][0][:value]=="o"
            winningPlayer={winner:"player2"}
        end

        if arr[0][1][:value]=="x" && arr[1][1][:value]=="x" && arr[2][1][:value]=="x"
            winningPlayer={winner:"player1"}
        end

        if arr[0][1][:value]=="o" && arr[1][1][:value]=="o" && arr[2][1][:value]=="o"
            winningPlayer={winner:"player2"}
        end


        if arr[0][2][:value]=="x" && arr[1][2][:value]=="x" && arr[2][2][:value]=="x"
            winningPlayer={winner:"player1"}
        end

        if arr[0][2][:value]=="o" && arr[1][2][:value]=="o" && arr[2][2][:value]=="o"
            winningPlayer={winner:"player2"}
        end

        if arr[0][0][:value]=="x" && arr[1][1][:value]=="x" && arr[2][2][:value]=="x"
            winningPlayer={winner:"player1"}
        end

        if arr[0][0][:value]=="o" && arr[1][1][:value]=="o" && arr[2][2][:value]=="o"
            winningPlayer={winner:"player2"}
        end

        if arr[0][2][:value]=="x" && arr[1][1][:value]=="x" && arr[2][0][:value]=="x"
            winningPlayer={winner:"player1"}
        end

        if arr[0][2][:value]=="o" && arr[1][1][:value]=="o" && arr[2][0][:value]=="o"
            winningPlayer={winner:"player2"}
        end

        return winningPlayer
        
    end
end




