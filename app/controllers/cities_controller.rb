class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all.page(params[:page])
    authorize @cities
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    authorize @city
  end

  # GET /cities/new
  def new
    @city = City.new

    authorize @city
  end

  # GET /cities/1/edit
  def edit

    authorize @city
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)
    @city.cov_positive_count = 0
    @city.cov_negative_count = 0
    @city.cov_recovered_count = 0
    @city.cov_died_count = 0
    @city.cov_odp_count = 0
    @city.cov_pdp_count = 0
    @city.cov_odp_processed_count = 0
    @city.cov_pdp_processed_count = 0

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy

    authorize @city
    
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def city_params
      params.require(:city).permit(:name, :call_center, :hotline)
    end
end
