class Actor < ActiveRecord::Base

    has_many :characters  # returns a list of characters associated with the actor
    has_many :shows, through: :characters # returns the shows associated with the actor through their characters

    def full_name
        self.first_name + " " + self.last_name
    end

    def list_roles
        self.characters.map do |char|
            "#{char.name} - #{char.show.name}"
        end
    end
end