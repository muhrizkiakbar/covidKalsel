class CovPdpsController < ApplicationController
  before_action :set_cov_pdp, only: [:show, :edit, :update, :destroy]

  # GET /cov_pdps
  # GET /cov_pdps.json
  def index
    # @cov_pdps = CovPdp.all.page(params[:page])
    @q = CovPdp.ransack(params[:q])
    @cov_pdps = @q.result(distinct: true).order('added_at DESC').page(params[:page])

    authorize @cov_pdps
  end

  # GET /cov_pdps/1
  # GET /cov_pdps/1.json
  def show

    authorize @cov_pdp
  end

  # GET /cov_pdps/new
  def new
    @cov_pdp = CovPdp.new

    authorize @cov_pdp
  end

  # GET /cov_pdps/1/edit
  def edit

    authorize @cov_pdp
  end

  # POST /cov_pdps
  # POST /cov_pdps.json
  def create
    @cov_pdp = CovPdp.new(cov_pdp_params)
    # @cov_pdp.city = City.friendly.find(params[:cov_pdp][:city_id])

    @city = City.find(@cov_pdp.city.id)


    if (@city.cov_pdp_count == 0)
      @diff_amount = @city.cov_pdp_count + @cov_pdp.amount
    else
      @diff_amount = @cov_pdp.amount - @city.cov_pdp_count 
    end

    @cov_pdp.amount = @diff_amount
    @cov_pdp.save

    @city.cov_pdp_count += @cov_pdp.amount
    @city.save

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

    @city = City.find(@cov_pdp.city.id)
    @city.cov_pdp_count -= @cov_pdp.amount
    @city.save


    # @cov_pdp.city = City.friendly.find(params[:cov_pdp][:city_id])
    
    respond_to do |format|
      if @cov_pdp.update(cov_pdp_params)

        @city = City.find(@cov_pdp.city.id)
        

        if (@city.cov_pdp_count == 0)
          @diff_amount = @city.cov_pdp_count + @cov_pdp.amount
        else
          @diff_amount = @cov_pdp.amount - @city.cov_pdp_count 
        end

        @cov_pdp.amount = @diff_amount
        @cov_pdp.save

        @city.cov_pdp_count += @cov_pdp.amount
        @city.save

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

    authorize @cov_pdp
    @city = City.find(@cov_pdp.city.id)
    @city.cov_pdp_count -= @cov_pdp.amount
    @city.save

    @cov_pdp.destroy
    respond_to do |format|
      format.html { redirect_to cov_pdps_url, notice: 'Cov pdp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_pdp
      @cov_pdp = CovPdp.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cov_pdp_params
      params.require(:cov_pdp).permit(:city_id, :amount, :added_at)
    end
end
