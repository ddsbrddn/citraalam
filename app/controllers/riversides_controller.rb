class RiversidesController < ApplicationController
  before_action :set_riverside, only: [:show, :edit, :update, :destroy]

  # GET /riversides
  # GET /riversides.json
  def index
    @riversides = Riverside.all
  end

  # GET /riversides/1
  # GET /riversides/1.json
  def show
  end

  # GET /riversides/new
  def new
    @riverside = Riverside.new
  end

  # GET /riversides/1/edit
  def edit
  end

  # POST /riversides
  # POST /riversides.json
  def create
    @riverside = Riverside.new(riverside_params)

    respond_to do |format|
      if @riverside.save
        format.html { redirect_to @riverside, notice: 'Riverside was successfully created.' }
        format.json { render :show, status: :created, location: @riverside }
      else
        format.html { render :new }
        format.json { render json: @riverside.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riversides/1
  # PATCH/PUT /riversides/1.json
  def update
    respond_to do |format|
      if @riverside.update(riverside_params)
        format.html { redirect_to @riverside, notice: 'Riverside was successfully updated.' }
        format.json { render :show, status: :ok, location: @riverside }
      else
        format.html { render :edit }
        format.json { render json: @riverside.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riversides/1
  # DELETE /riversides/1.json
  def destroy
    @riverside.destroy
    respond_to do |format|
      format.html { redirect_to riversides_url, notice: 'Riverside was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riverside
      @riverside = Riverside.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def riverside_params
      params.require(:riverside).permit(:unit, :packet, :start_time, :end_time, :status)
    end
end
