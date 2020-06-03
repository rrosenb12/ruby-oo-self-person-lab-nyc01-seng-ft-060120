# your code goes here
require 'pry'

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, happiness = 8, bank_account = 25, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness >= 10
            @happiness = 10
        elsif
            @happiness <= 0
            @happiness = 0
        else
            @happiness
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene >= 10
            @hygiene = 10
        elsif
            @hygiene <= 0
            @hygiene = 0
        else
            @hygiene
        end
    end

    def happy?
        if happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        elsif topic == 'programming'
            return "blah blah blah blah blah"
        end
    end

end