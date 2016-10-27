class Booking < ApplicationRecord
	belongs_to :customer, optional: true
	belongs_to :user
	has_many :lakesides
	has_many :riversides

	accepts_nested_attributes_for :lakesides

	searchkick autocomplete: ['packet']

	#define scope for Booking	with status booking
	#scope :status, -> { where(status: "booking")}
end
