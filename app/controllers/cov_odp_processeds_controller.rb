class CovOdpProcessedsController < ApplicationController
  before_action :set_cov_odp_processed, only: [:show, :edit, :update, :destroy]

  # GET /cov_odp_processeds
  # GET /cov_odp_processeds.json
  def index
    # @cov_odp_processeds = CovOdpProcessed.all.page(params[:page])
    @q = CovOdpProcessed.ransack(params[:q])
    @cov_odp_processeds = @q.result(distinct: true).order('added_at DESC').page(params[:page])
    authorize @cov_odp_processeds
  end

  # GET /cov_odp_processeds/1
  # GET /cov_odp_processeds/1.json
  def show

    authorize @cov_odp_processed
  end

  # GET /cov_odp_processeds/new
  def new
    @cov_odp_processed = CovOdpProcessed.new
    authorize @cov_odp_processed
  end

  # GET /cov_odp_processeds/1/edit
  def edit
    authorize @cov_odp_processed
  end

  # POST /cov_odp_processeds
  # POST /cov_odp_processeds.json
  def create
    @cov_odp_processed = CovOdpProcessed.new(cov_odp_processed_params)
    
    # @cov_odp_processed.city = City.friendly.find(params[:cov_odp_processed][:city_id])



    @city = City.find(@cov_odp_processed.city.id)


    if (@city.cov_odp_processed_count == 0)
      @diff_amount = @city.cov_odp_processed_count + @cov_odp_processed.amount
    else
      @diff_amount = @cov_odp_processed.amount - @city.cov_odp_processed_count 
    end

    @cov_odp_processed.amount = @diff_amount
    @cov_odp_processed.save

    @city.cov_odp_processed_count += @cov_odp_processed.amount
    @city.cov_odp_count -= @cov_odp_processed.amount


    if @cov_odp_processed.amount > @city.cov_odp_processed_count
      redirect_to @cov_died, notice: 'Cov died was failed to create.'
    end

    @city.save

    respond_to do |format|
      if @cov_odp_processed.save
        format.html { redirect_to @cov_odp_processed, notice: 'Cov odp processed was successfully created.' }
        format.json { render :show, status: :created, location: @cov_odp_processed }
      else
        format.html { render :new }
        format.json { render json: @cov_odp_processed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cov_odp_processeds/1
  # PATCH/PUT /cov_odp_processeds/1.json
  def update

    @city = City.find(@cov_odp_processed.city.id)
    @city.cov_odp_processed_count -= @cov_odp_processed.amount
    @city.cov_odp_count += @cov_odp_processed.amount

    @city.save

    # @cov_odp_processed.city = City.find(@cov_odp_processed.city.id)
    respond_to do |format|
      if @cov_odp_processed.update(cov_odp_processed_params)

        @city = City.find(@cov_odp_processed.city.id)


        if (@city.cov_odp_processed_count == 0)
          @diff_amount = @city.cov_odp_processed_count + @cov_odp_processed.amount
        else
          @diff_amount = @cov_odp_processed.amount - @city.cov_odp_processed_count 
        end
        # @diff_amount = @city.cov_odp_processed_count - @cov_odp_processed.amount

        @cov_odp_processed.amount = @diff_amount
        @cov_odp_processed.save

        @city.cov_odp_processed_count += @cov_odp_processed.amount
        @city.cov_odp_count -= @cov_odp_processed.amount
        @city.save
        format.html { redirect_to @cov_odp_processed, notice: 'Cov odp processed was successfully updated.' }
        format.json { render :show, status: :ok, location: @cov_odp_processed }
      else
        format.html { render :edit }
        format.json { render json: @cov_odp_processed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cov_odp_processeds/1
  # DELETE /cov_odp_processeds/1.json
  def destroy
    authorize @cov_odp_processed

    @city = City.find(@cov_odp_processed.city.id)
    @city.cov_odp_processed_count -= @cov_odp_processed.amount
    @city.cov_odp_count += @cov_odp_processed.amount
    @city.save

    @cov_odp_processed.destroy
    respond_to do |format|
      format.html { redirect_to cov_odp_processeds_url, notice: 'Cov odp processed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_odp_processed
      @cov_odp_processed = CovOdpProcessed.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cov_odp_processed_params
      params.require(:cov_odp_processed).permit(:city_id, :amount, :added_at)
    end
end
