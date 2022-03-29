class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize name
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def bank_account= value
        @bank_account += value
    end

    def hygiene= value
        @hygiene = value.clamp(0, 10)
    end

    def happiness= value
        @happiness = value.clamp(0, 10)
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid amount
        self.bank_account= amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene= self.hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness= self.happiness + 2
        self.hygiene= self.hygiene - 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend friend
        self.happiness= self.happiness + 3
        friend.happiness= friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end