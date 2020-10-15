class User < ApplicationRecord
    has_many :reservations
    has_many :girlfriends, through: :reservations
    has_many :reviews, through: :reservations
    has_secure_password
end
