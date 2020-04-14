class InformationController < ApplicationController
  before_action :set_information, only: [:show, :edit, :update, :destroy]

  # GET /information
  # GET /information.json
  def index
    @informations = Information.all.page(params[:page])
    authorize @informations
  end

  # GET /information/1
  # GET /information/1.json
  def show
    authorize @information
  end

  # GET /information/new
  def new
    @information = Information.new
    authorize @information
  end

  # GET /information/1/edit
  def edit

    authorize @information
  end

  # POST /information
  # POST /information.json
  def create
    p "=========="
    p current_user
    @information = Information.new(information_params)
    @information.user = current_user
    respond_to do |format|
      if @information.save
        format.html { redirect_to @information, notice: 'Information was successfully created.' }
        format.json { render :show, status: :created, location: @information }
      else
        format.html { render :new }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /information/1
  # PATCH/PUT /information/1.json
  def update
    @information.image_content.destroy
    respond_to do |format|
      if @information.update(information_params)
        format.html { redirect_to @information, notice: 'Information was successfully updated.' }
        format.json { render :show, status: :ok, location: @information }
      else
        format.html { render :edit }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information/1
  # DELETE /information/1.json
  def destroy
    authorize @information

    @information.image_content.destroy
    @information.destroy
    respond_to do |format|
      format.html { redirect_to information_index_url, notice: 'Information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_information
      @information = Information.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def information_params
      params.require(:information).permit(:tittle,:image_content, :content)
    end
end
