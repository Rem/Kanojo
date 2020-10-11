class Girlfriend < ApplicationRecord
    has_many :reservations
    has_many :reviews through: :reservations
    has_many :locations
    

end
