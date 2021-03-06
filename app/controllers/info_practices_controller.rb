class InfoPracticesController < ApplicationController
  before_action :set_info_practice, only: [:show, :edit, :update, :destroy]

  # GET /info_practices
  # GET /info_practices.json
  def index
    # @info_practices = InfoPractice.page(params[:page])

    @q = InfoPractice.ransack(params[:q])
    @info_practices = @q.result(distinct: true).page(params[:page])
    authorize @info_practices
  end

  # GET /info_practices/1
  # GET /info_practices/1.json
  def show
    authorize @info_practice
  end

  # GET /info_practices/new
  def new
    @info_practice = InfoPractice.new
    authorize @info_practice
  end

  # GET /info_practices/1/edit
  def edit
    authorize @info_practice
  end

  # POST /info_practices
  # POST /info_practices.json
  def create
    @info_practice = InfoPractice.new(info_practice_params)

    respond_to do |format|
      if @info_practice.save
        format.html { redirect_to info_practices_url, notice: 'Info practice was successfully created.' }
        format.json { render :show, status: :created, location: @info_practice }
      else
        format.html { render :new }
        format.json { render json: @info_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_practices/1
  # PATCH/PUT /info_practices/1.json
  def update
    respond_to do |format|
      if @info_practice.update(info_practice_params)
        format.html { redirect_to info_practices_url, notice: 'Info practice was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_practice }
      else
        format.html { render :edit }
        format.json { render json: @info_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_practices/1
  # DELETE /info_practices/1.json
  def destroy
    authorize @info_practice
    @info_practice.destroy
    respond_to do |format|
      format.html { redirect_to info_practices_url, notice: 'Info practice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_practice
      @info_practice = InfoPractice.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def info_practice_params
      params.require(:info_practice).permit(:image_content)
    end
end
