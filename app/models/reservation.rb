class Reservation < ApplicationRecord
  belongs_to :girlfriend
  belongs_to :user
  has_many :locations through: :girlfriend
end
