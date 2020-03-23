class CovRecoveredsController < ApplicationController
  before_action :set_cov_recovered, only: [:show, :edit, :update, :destroy]

  # GET /cov_recovereds
  # GET /cov_recovereds.json
  def index
    @cov_recovereds = CovRecovered.all
  end

  # GET /cov_recovereds/1
  # GET /cov_recovereds/1.json
  def show
  end

  # GET /cov_recovereds/new
  def new
    @cov_recovered = CovRecovered.new
  end

  # GET /cov_recovereds/1/edit
  def edit
  end

  # POST /cov_recovereds
  # POST /cov_recovereds.json
  def create
    @cov_recovered = CovRecovered.new(cov_recovered_params)


    @city = City.find(@cov_recovered.city)
    @city.cov_recovered_count += @cov_recovered.amount
    @city.save

    respond_to do |format|
      if @cov_recovered.save
        format.html { redirect_to @cov_recovered, notice: 'Cov recovered was successfully created.' }
        format.json { render :show, status: :created, location: @cov_recovered }
      else
        format.html { render :new }
        format.json { render json: @cov_recovered.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cov_recovereds/1
  # PATCH/PUT /cov_recovereds/1.json
  def update
    respond_to do |format|
      if @cov_recovered.update(cov_recovered_params)
        format.html { redirect_to @cov_recovered, notice: 'Cov recovered was successfully updated.' }
        format.json { render :show, status: :ok, location: @cov_recovered }
      else
        format.html { render :edit }
        format.json { render json: @cov_recovered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cov_recovereds/1
  # DELETE /cov_recovereds/1.json
  def destroy

    @city = City.find(@cov_recovered.city)
    @city.cov_recovered_count -= @cov_recovered.amount
    @city.save

    @cov_recovered.destroy
    respond_to do |format|
      format.html { redirect_to cov_recovereds_url, notice: 'Cov recovered was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_recovered
      @cov_recovered = CovRecovered.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cov_recovered_params
      params.require(:cov_recovered).permit(:city_id, :amount, :dateTime)
    end
end
