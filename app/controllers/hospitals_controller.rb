class HospitalsController < ApplicationController
  before_action :set_hospital, only: [:show, :edit, :update, :destroy]

  # GET /hospitals
  # GET /hospitals.json
  def index
    @hospitals = Hospital.all.page(params[:page])
    # @q = Hospital.ransack(params[:q])
    # @hospitals = @q.result(distinct: true).page(params[:page])
    authorize @hospitals
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show

    authorize @hospital
  end

  # GET /hospitals/new
  def new
    @hospital = Hospital.new

    authorize @hospital
  end

  # GET /hospitals/1/edit
  def edit

    authorize @hospital
  end

  # POST /hospitals
  # POST /hospitals.json
  def create
    @hospital = Hospital.new(hospital_params)
    p "*" * 100
    p params[:city_id]
    # @hospital.city = City.friendly.find(params[:hospital][:city_id])
    respond_to do |format|
      if @hospital.save
        format.html { redirect_to @hospital, notice: 'Hospital was successfully created.' }
        format.json { render :show, status: :created, location: @hospital }
      else
        format.html { render :new }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospitals/1
  # PATCH/PUT /hospitals/1.json
  def update
    @hospital.city = City.friendly.find(params[:hospital][:city_id])
    respond_to do |format|
      if @hospital.update(hospital_params)
        format.html { redirect_to @hospital, notice: 'Hospital was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospital }
      else
        format.html { render :edit }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitals/1
  # DELETE /hospitals/1.json
  def destroy

    authorize @hospital
    @hospital.destroy
    respond_to do |format|
      format.html { redirect_to hospitals_url, notice: 'Hospital was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital
      @hospital = Hospital.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hospital_params
      params.require(:hospital).permit(:name_hospital, :city_id, :address, :hotline, :phone_number,:is_primary)
    end
end
