class Building < ApplicationRecord
    before_save :set_capitalize
    has_many :apartments

    private
    def  set_capitalize
        self.name.capitalize!
        self.address.capitalize!
        self.city.capitalize!
    end
end