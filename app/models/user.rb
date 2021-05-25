class User < ApplicationRecord
  has_many :islands
  has_many :bookings
end
