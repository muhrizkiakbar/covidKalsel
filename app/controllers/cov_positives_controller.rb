class CovPositivesController < ApplicationController
  before_action :set_cov_positive, only: [:show, :edit, :update, :destroy]

  # GET /cov_positives
  # GET /cov_positives.json
  def index
    @cov_positives = CovPositive.all

    authorize @cov_positives
  end

  # GET /cov_positives/1
  # GET /cov_positives/1.json
  def show

    authorize @cov_positive
  end

  # GET /cov_positives/new
  def new
    @cov_positive = CovPositive.new
    authorize @cov_positive
  end

  # GET /cov_positives/1/edit
  def edit
    authorize @cov_positive
  end

  # POST /cov_positives
  # POST /cov_positives.json
  def create
    @cov_positive = CovPositive.new(cov_positive_params)

    @city = City.find(@cov_positive.city)
    @city.cov_positive_count += @cov_positive.amount
    @city.save

    respond_to do |format|
      if @cov_positive.save
        format.html { redirect_to @cov_positive, notice: 'Cov positive was successfully created.' }
        format.json { render :show, status: :created, location: @cov_positive }
      else
        format.html { render :new }
        format.json { render json: @cov_positive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cov_positives/1
  # PATCH/PUT /cov_positives/1.json
  def update
    respond_to do |format|
      if @cov_positive.update(cov_positive_params)
        format.html { redirect_to @cov_positive, notice: 'Cov positive was successfully updated.' }
        format.json { render :show, status: :ok, location: @cov_positive }
      else
        format.html { render :edit }
        format.json { render json: @cov_positive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cov_positives/1
  # DELETE /cov_positives/1.json
  def destroy

    authorize @cov_positive
    
    @city = City.find(@cov_positive.city)
    @city.cov_positive_count -= @cov_positive.amount
    @city.save

    @cov_positive.destroy
    respond_to do |format|
      format.html { redirect_to cov_positives_url, notice: 'Cov positive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_positive
      @cov_positive = CovPositive.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cov_positive_params
      params.require(:cov_positive).permit(:city_id, :amount, :dateTime)
    end
end
