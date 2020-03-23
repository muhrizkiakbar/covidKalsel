class CovDiedsController < ApplicationController
  before_action :set_cov_died, only: [:show, :edit, :update, :destroy]

  # GET /cov_dieds
  # GET /cov_dieds.json
  def index
    @cov_dieds = CovDied.all
  end

  # GET /cov_dieds/1
  # GET /cov_dieds/1.json
  def show
  end

  # GET /cov_dieds/new
  def new
    @cov_died = CovDied.new
  end

  # GET /cov_dieds/1/edit
  def edit
  end

  # POST /cov_dieds
  # POST /cov_dieds.json
  def create
    @cov_died = CovDied.new(cov_died_params)

    respond_to do |format|
      if @cov_died.save
        format.html { redirect_to @cov_died, notice: 'Cov died was successfully created.' }
        format.json { render :show, status: :created, location: @cov_died }
      else
        format.html { render :new }
        format.json { render json: @cov_died.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cov_dieds/1
  # PATCH/PUT /cov_dieds/1.json
  def update
    respond_to do |format|
      if @cov_died.update(cov_died_params)
        format.html { redirect_to @cov_died, notice: 'Cov died was successfully updated.' }
        format.json { render :show, status: :ok, location: @cov_died }
      else
        format.html { render :edit }
        format.json { render json: @cov_died.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cov_dieds/1
  # DELETE /cov_dieds/1.json
  def destroy
    @cov_died.destroy
    respond_to do |format|
      format.html { redirect_to cov_dieds_url, notice: 'Cov died was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_died
      @cov_died = CovDied.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cov_died_params
      params.require(:cov_died).permit(:city_id, :amount, :dateTime)
    end
end
