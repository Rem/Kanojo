class Reservation < ApplicationRecord
  belongs_to :girlfriend
  belongs_to :user
  belongs_to :location
end
