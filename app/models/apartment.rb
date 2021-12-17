class Apartment < ApplicationRecord
  belongs_to :building

  validates :number, uniqueness: true, presence: true, numericality: true 
  validates :building_id, presence: true 

end
