# your code goes here
require 'pry'
class Person 
  attr_reader :name, :happiness , :hygiene
  attr_accessor :bank_account 
  def initialize name
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end
  def happiness=(happy)
    @happiness = happy.clamp(0,10)
  end
  def hygiene=(smell)
    @hygiene = smell.clamp(0,10)
  end
  def happy?
   happiness > 7 ? true : false
    end
    def clean?
      hygiene > 7 ? true : false
    end
    def get_paid money
      @bank_account = bank_account + money
      "all about the benjamins"
    end
    def take_bath
      lol = hygiene + 4
      self.hygiene = lol
      
      
      "♪ Rub-a-dub just relaxing in the tub ♫"

    end
    def work_out
      self.hygiene = hygiene - 3
      self.happiness += 2
      '♪ another one bites the dust ♫'
    end
    def call_friend friend
      self.happiness += 3
      friend.happiness += 3
       "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation friend, topic
    
    case topic
    when 'politics'; 
     [self , friend].each { |person| person.happiness -= 2}
     "blah blah partisan blah lobbyist"
    when 'weather';
      [self,friend].each {|person| person.happiness += 1}
      "blah blah sun blah rain"
    else "blah blah blah blah blah"
    end
  end
end