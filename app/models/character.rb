class Character < ActiveRecord::Base
  
    belongs_to :actor # returns the actor that the character belongs to
    belongs_to :show  # returns the show that the character belongs to

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
end