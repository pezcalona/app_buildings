class Building < ApplicationRecord
    before_save :set_capitalize
    has_many :apartments


    validates :name, uniqueness: true, presence: true
    validates :address, uniqueness: true, presence: true
    validates :city, uniqueness: true, presence: true

    private
    def  set_capitalize
        self.name.capitalize!
        self.address.capitalize!
        self.city.capitalize!
    end
end