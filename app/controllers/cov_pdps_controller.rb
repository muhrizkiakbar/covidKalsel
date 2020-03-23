class CovPdpsController < ApplicationController
  before_action :set_cov_pdp, only: [:show, :edit, :update, :destroy]

  # GET /cov_pdps
  # GET /cov_pdps.json
  def index
    @cov_pdps = CovPdp.all
  end

  # GET /cov_pdps/1
  # GET /cov_pdps/1.json
  def show
  end

  # GET /cov_pdps/new
  def new
    @cov_pdp = CovPdp.new
  end

  # GET /cov_pdps/1/edit
  def edit
  end

  # POST /cov_pdps
  # POST /cov_pdps.json
  def create
    @cov_pdp = CovPdp.new(cov_pdp_params)

    respond_to do |format|
      if @cov_pdp.save
        format.html { redirect_to @cov_pdp, notice: 'Cov pdp was successfully created.' }
        format.json { render :show, status: :created, location: @cov_pdp }
      else
        format.html { render :new }
        format.json { render json: @cov_pdp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cov_pdps/1
  # PATCH/PUT /cov_pdps/1.json
  def update
    respond_to do |format|
      if @cov_pdp.update(cov_pdp_params)
        format.html { redirect_to @cov_pdp, notice: 'Cov pdp was successfully updated.' }
        format.json { render :show, status: :ok, location: @cov_pdp }
      else
        format.html { render :edit }
        format.json { render json: @cov_pdp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cov_pdps/1
  # DELETE /cov_pdps/1.json
  def destroy
    @cov_pdp.destroy
    respond_to do |format|
      format.html { redirect_to cov_pdps_url, notice: 'Cov pdp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_pdp
      @cov_pdp = CovPdp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cov_pdp_params
      params.require(:cov_pdp).permit(:city_id, :amount, :dateTime)
    end
end
