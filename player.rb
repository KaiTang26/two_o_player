
    class Player
        attr_reader :live
        def initialize (live)
            @live = live
        end
        def score (yes_no)
            if yes_no
                self.live
            else
                @live=self.live-1
            end
        end
    end





