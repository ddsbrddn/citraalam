class LakesidesController < ApplicationController
  before_action :set_lakeside, only: [:show, :edit, :update, :destroy]

  # GET /lakesides
  # GET /lakesides.json
  def index
    @lakesides = Lakeside.all

    @bookings = Booking.all

    if params[:status] == "Booking"
      @post_booking = params[:booking]
    else

    end
  end

  # GET /lakesides/1
  # GET /lakesides/1.json
  def show
  end

  # GET /lakesides/new
  def new
    @lakeside = Lakeside.new
  end

  # GET /lakesides/1/edit
  def edit
  end

  # POST /lakesides
  # POST /lakesides.json
  def create
    @lakeside = Lakeside.new(lakeside_params)

    respond_to do |format|
      if @lakeside.save
        format.html { redirect_to @lakeside, notice: 'Lakeside was successfully created.' }
        format.json { render :show, status: :created, location: @lakeside }
      else
        format.html { render :new }
        format.json { render json: @lakeside.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lakesides/1
  # PATCH/PUT /lakesides/1.json
  def update
    respond_to do |format|
      if @lakeside.update(lakeside_params)
        format.html { redirect_to @lakeside, notice: 'Lakeside was successfully updated.' }
        format.json { render :show, status: :ok, location: @lakeside }
      else
        format.html { render :edit }
        format.json { render json: @lakeside.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lakesides/1
  # DELETE /lakesides/1.json
  def destroy
    @lakeside.destroy
    respond_to do |format|
      format.html { redirect_to lakesides_url, notice: 'Lakeside was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lakeside
      @lakeside = Lakeside.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lakeside_params
      params.require(:lakeside).permit(:organization, :packet, :start_time, :end_time, :status)
    end
end
