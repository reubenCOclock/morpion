require_relative './board.rb'

class Player 

    attr_accessor :name

    def initialize(name)
        @name=name
      
    end



    def chooseSpot(arr)
        puts "viellez choisir ta position"
        selectPos=gets.chomp
        posInfo=[]
        arr.length.times do |i|
            arr[i].length.times do |j|
                if arr[i][j][:position]==selectPos
                    posInfo.push({"arr":arr[i][j],"posi":i,"posj":j})
                end
            end
        end 

        return posInfo
    end

    def chooseValue (arr)
        getPos=chooseSpot(arr)

        if getPos.length==1 
            if getPos[0][:arr][:value]!="nil"
                puts "value already taken"
                chooseValue(arr)

            else 
                puts "#{@name} IS PLAYING"
                if @name=="player1"
                puts "vous etes les x, choisi un x"
                
                selectedValue=gets.chomp 
                if selectedValue=="x"
                    arr[getPos[0][:posi]][getPos[0][:posj]][:value]=selectedValue 
                    arr[getPos[0][:posi]][getPos[0][:posj]][:player]=@name
                else
                    puts "viuellez choisir un x"
                    chooseValue(arr)
                end
                
              

                

                end

                if @name=="player2"
                    puts "#{@name} IS PLAYING"
                    puts "vous etes les o,choisi un o"
                    
                    selectedValue=gets.chomp

                    if selectedValue=="o"
                        arr[getPos[0][:posi]][getPos[0][:posj]][:value]=selectedValue 
                        arr[getPos[0][:posi]][getPos[0][:posj]][:player]=@name
                    else
                        puts "viuellez choisir un o"
                        chooseValue(arr)
                    end
                    
                  
    
                end

                newBoard=Board.new
                newBoard.modifyBoard(arr)
                newBoard.showBoard
                
                
            end
        else
            puts "please enter another value"
            chooseValue(arr)
        end
    end

end







