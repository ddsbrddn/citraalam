class Customer < ApplicationRecord
	belongs_to :user
	has_many :bookings

	accepts_nested_attributes_for :bookings
end
