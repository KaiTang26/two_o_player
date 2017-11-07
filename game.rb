require_relative "player"
require_relative "math"
    class Game
        def initialize()
            @player1 = Player.new(3)        
            @player2 = Player.new(3)
        end

        def start
            
            while @player1.live >0 && @player2.live >0 do
            question = Question.new
            puts "Player1: #{question.question}"
            value = gets.chomp.to_i
            if question.answer(value) 
                puts "Player1: Yes! You are correct"
                puts "P1: #{@player1.live}/3 vs P2: #{@player2.live}/3"
            else
                @player1.score(false)
                puts "Player1: Seriously? No1"
                puts "P1: #{@player1.live}/3 vs P2: #{@player2.live}/3"
            end
            puts "-------New Turn-------"
            question = Question.new
            puts "Player2: #{question.question}"
            value = gets.chomp.to_i
            
            if question.answer(value)
                puts "Player2: Yes! You are correct"
                puts "P1: #{@player1.live}/3 vs P2: #{@player2.live}/3"
            else
                @player2.score(false)
                puts "Player1: Seriously? No1"
                puts "P1: #{@player1.live}/3 vs P2: #{@player2.live}/3"
            end        
            end
            if @player1.live >0
                puts "Player1 wins with a score of #{@player1.live}/3"
                
            elsif @player2.live >0
                puts "Player2 wins with a score of #{@player2.live}/3"
            else
                puts "Not one win" 
            end
            puts "----Game Over----"
            puts "Good bye"
        end
    end


