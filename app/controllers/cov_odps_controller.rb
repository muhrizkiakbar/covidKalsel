class CovOdpsController < ApplicationController
  before_action :set_cov_odp, only: [:show, :edit, :update, :destroy]

  # GET /cov_odps
  # GET /cov_odps.json
  def index
    @cov_odps = CovOdp.all.page(params[:page])

    authorize @cov_odps
  end

  # GET /cov_odps/1
  # GET /cov_odps/1.json
  def show
    authorize @cov_odp
  end

  # GET /cov_odps/new
  def new
    @cov_odp = CovOdp.new
    authorize @cov_odp
  end

  # GET /cov_odps/1/edit
  def edit
    authorize @cov_odp
  end

  # POST /cov_odps
  # POST /cov_odps.json
  def create
    @cov_odp = CovOdp.new(cov_odp_params)
    # @cov_odp.city = City.friendly.find(params[:cov_odp][:city_id])


    @city = City.find(@cov_odp.city.id)
    @city.cov_odp_count += @cov_odp.amount
    @city.save

    respond_to do |format|
      if @cov_odp.save
        format.html { redirect_to @cov_odp, notice: 'Cov odp was successfully created.' }
        format.json { render :show, status: :created, location: @cov_odp }
      else
        format.html { render :new }
        format.json { render json: @cov_odp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cov_odps/1
  # PATCH/PUT /cov_odps/1.json
  def update

    @city = City.find(@cov_odp.city.id)
    @city.cov_odp_count -= @cov_odp.amount
    @city.save

    respond_to do |format|
      if @cov_odp.update(cov_odp_params)

        @city = City.find(@cov_odp.city.id)
        @city.cov_odp_count += @cov_odp.amount
        @city.save
        
        format.html { redirect_to @cov_odp, notice: 'Cov odp was successfully updated.' }
        format.json { render :show, status: :ok, location: @cov_odp }
      else
        format.html { render :edit }
        format.json { render json: @cov_odp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cov_odps/1
  # DELETE /cov_odps/1.json
  def destroy

    authorize @cov_odp
    
    @city = City.find(@cov_odp.city.id)
    # @city.cov_odp_count -= @cov_odp.amount
    @city.save

    @cov_odp.destroy
    respond_to do |format|
      format.html { redirect_to cov_odps_url, notice: 'Cov odp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_odp
      @cov_odp = CovOdp.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cov_odp_params
      params.require(:cov_odp).permit(:city_id, :amount, :dateTime)
    end
end
