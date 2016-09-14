class Booking < ApplicationRecord
	belongs_to :customer, optional: true
end
