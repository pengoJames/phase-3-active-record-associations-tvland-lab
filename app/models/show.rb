class Show < ActiveRecord::Base

    has_many :characters 
    has_many :actors, through: :characters # returns the characters associated with the show | can be used to build its characters 

    belongs_to :network 

    def actors_list
        self.actors.map do |actor|
            actor.full_name
        end
    end
end