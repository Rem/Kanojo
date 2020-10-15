class Girlfriend < ApplicationRecord
    has_many :reservations
    has_many :users, through: :reservations
    has_many :reviews, through: :reservations
    has_many :locations
    has_secure_password
    

end
