class CovPdpProcessedsController < ApplicationController
  before_action :set_cov_pdp_processed, only: [:show, :edit, :update, :destroy]

  # GET /cov_pdp_processeds
  # GET /cov_pdp_processeds.json
  def index
    @cov_pdp_processeds = CovPdpProcessed.all.page(params[:page])
    authorize @cov_pdp_processeds
  end

  # GET /cov_pdp_processeds/1
  # GET /cov_pdp_processeds/1.json
  def show
    authorize @cov_pdp_processed
  end

  # GET /cov_pdp_processeds/new
  def new
    @cov_pdp_processed = CovPdpProcessed.new
    authorize @cov_pdp_processed
  end

  # GET /cov_pdp_processeds/1/edit
  def edit
    authorize @cov_pdp_processed
  end

  # POST /cov_pdp_processeds
  # POST /cov_pdp_processeds.json
  def create
    @cov_pdp_processed = CovPdpProcessed.new(cov_pdp_processed_params)
    @cov_pdp_processed.city = City.friendly.find(params[:cov_pdp_processed][:city_id])

    @city = City.find(@cov_pdp_processed.city.id)
    @city.cov_pdp_processed_count += @cov_pdp_processed.amount
    @city.cov_pdp_count -= @cov_pdp_processed.amount
    @city.save

    respond_to do |format|
      if @cov_pdp_processed.save
        format.html { redirect_to @cov_pdp_processed, notice: 'Cov pdp processed was successfully created.' }
        format.json { render :show, status: :created, location: @cov_pdp_processed }
      else
        format.html { render :new }
        format.json { render json: @cov_pdp_processed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cov_pdp_processeds/1
  # PATCH/PUT /cov_pdp_processeds/1.json
  def update

    @city = City.find(@cov_pdp_processed.city.id)
    @city.cov_pdp_processed_count -= @cov_pdp_processed.amount
    @city.cov_pdp_count += @cov_pdp_processed.amount
    @city.save

    @cov_pdp_processed.city = City.friendly.find(params[:cov_pdp_processed][:city_id])
    
    respond_to do |format|
      if @cov_pdp_processed.update(cov_pdp_processed_params)

        @city = City.find(@cov_pdp_processed.city.id)
        @city.cov_pdp_processed_count += @cov_pdp_processed.amount
        @city.cov_pdp_count -= @cov_pdp_processed.amount
        @city.save
        
        format.html { redirect_to @cov_pdp_processed, notice: 'Cov pdp processed was successfully updated.' }
        format.json { render :show, status: :ok, location: @cov_pdp_processed }
      else
        format.html { render :edit }
        format.json { render json: @cov_pdp_processed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cov_pdp_processeds/1
  # DELETE /cov_pdp_processeds/1.json
  def destroy
    authorize @cov_pdp_processed

    @city = City.find(@cov_pdp_processed.city.id)
    @city.cov_pdp_processed_count -= @cov_pdp_processed.amount
    @city.cov_pdp_count += @cov_pdp_processed.amount
    @city.save

    @cov_pdp_processed.destroy
    respond_to do |format|
      format.html { redirect_to cov_pdp_processeds_url, notice: 'Cov pdp processed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_pdp_processed
      @cov_pdp_processed = CovPdpProcessed.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cov_pdp_processed_params
      params.require(:cov_pdp_processed).permit(:city_id, :amount, :dateTime)
    end
end
