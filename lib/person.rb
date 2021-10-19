# your code goes here
require 'pry'
class Person
    attr_accessor :bank_account 
    attr_reader :name, :happiness, :hygiene
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happy?
        if(happiness > 7)
            true
        else
            false
        end
    end

    def clean?
        if(hygiene > 7)
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account = self.bank_account + amount
        "all about the benjamins"
    end

    def take_bath 
        self.hygiene = self.hygiene + 4

        if(self.hygiene > 10)
            self.hygiene = 10
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        if(self.happiness > 10)
            self.happiness = 10
        end

        if(self.hygiene < 0)
            self.hygiene = 0
        end
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3

        if(self.happiness > 10)
            self.happiness = 10
        end

        if(friend.happiness > 10)
            friend.happiness = 10
        end

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if(topic == "politics")
            friend.happiness < 0 ?  friend.happiness = 0 : friend.happiness = friend.happiness - 2
            self.happiness < 0 ? self.happiness = 0 : self.happiness = self.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif(topic == "weather")
            friend.happiness > 10 ? friend.happiness = 10 : friend.happiness = friend.happiness + 1
            self.happiness > 10 ? self.happiness = 10 : self.happiness = self.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

    def happiness=(new_happiness)
        if (new_happiness > 10)
           @happiness = 10
        elsif(new_happiness < 0)
            @happiness = 0
        else
           @happiness = new_happiness
        end
    end

    def hygiene=(new_hygiene)
        if (new_hygiene > 10)
           @hygiene = 10
        elsif(new_hygiene < 0)
            @hygiene = 0
        else
           @hygiene = new_hygiene
        end
    end
end

# binding.pry