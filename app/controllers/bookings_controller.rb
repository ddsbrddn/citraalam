class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
    @customers = Customer.all

    respond_to do |format|
      format.html
    end
  end
end
