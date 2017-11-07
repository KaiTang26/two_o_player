
    class Question
        def initialize
            @first_number = rand(1..20)
            @second_number=rand(1..20)
            @answer =  @first_number + @second_number
        end

        def question
            "What does #{@first_number} plus #{@second_number} ?"
        end

        def answer(value)
            value == @answer
        end
    end
 