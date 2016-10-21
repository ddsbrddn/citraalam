class Customer < ApplicationRecord
	belongs_to :user
	has_many :bookings
	has_many :lakesides, through: :bookings
	has_many :riversides, through: :bookings

	accepts_nested_attributes_for :bookings
	#accepts_nested_attributes_for :lakesides

	def customers_for_form
		collection = customers.where(customer_id: id)
		collection.any? collection: customers.build
	end
end
