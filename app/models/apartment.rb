class Apartment < ApplicationRecord
  belongs_to :building

  validates :number, presence: true, numericality: true
  validates :number, uniqueness:  { scope: :building_id }
  validates :building_id, presence: true 

end
