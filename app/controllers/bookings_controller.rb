class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    #@bookings = Booking.all
    #@customers = Customer.all

    @bookings = Booking.paginate(page: params[:page])

    if params[:query].present?
      @bookings = Booking.search(params[:query], page: params[:page])
    else
      @bookings = Booking.order(:packet).page params[:page]
    end
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def create
    @booking = current_user.bookings.build(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content}
    end
  end

  def autocomplete
    render json: Booking.search(params[:query], autocomplete: true, limit: 10).map(&:packet)
  end

  private

    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:unit, :packet, :start_time, :end_time, :total_participant, :status, :note)
    end

end
