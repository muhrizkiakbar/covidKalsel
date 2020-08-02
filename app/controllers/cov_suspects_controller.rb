class CovSuspectsController < ApplicationController
  before_action :set_cov_suspect, only: [:show, :edit, :update, :destroy]

  # GET /cov_suspects
  # GET /cov_suspects.json
  def index
    @q = CovSuspect.ransack(params[:q])
    @cov_suspects = @q.result(distinct: true).order('added_at DESC').page(params[:page])

    authorize @cov_suspects
  end

  # GET /cov_suspects/1
  # GET /cov_suspects/1.json
  def show
    authorize @cov_suspect
  end

  # GET /cov_suspects/new
  def new
    @cov_suspect = CovSuspect.new
  end

  # GET /cov_suspects/1/edit
  def edit
  end

  # POST /cov_suspects
  # POST /cov_suspects.json
  def create
    @cov_suspect = CovSuspect.new(cov_suspect_params)

    @city = City.find(@cov_suspect.city.id)


    if (@city.cov_negative_count == 0)
      @diff_amount = @city.cov_negative_count + @cov_suspect.amount
    else
      @diff_amount =  @cov_suspect.amount - @city.cov_negative_count
    end

    @cov_suspect.amount = @diff_amount
    @cov_suspect.save

    # @city.cov_positive_count -= @diff_amount
    @city.cov_negative_count += @diff_amount
    @city.save

    respond_to do |format|
      if @cov_suspect.save
        format.html { redirect_to @cov_suspect, notice: 'Cov suspect was successfully created.' }
        format.json { render :show, status: :created, location: @cov_suspect }
      else
        format.html { render :new }
        format.json { render json: @cov_suspect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cov_suspects/1
  # PATCH/PUT /cov_suspects/1.json
  def update
    @city = City.find(@cov_suspect.city.id)
  
    # @city.cov_positive_count += @cov_suspect.amount
    @city.cov_negative_count -= @cov_suspect.amount
    @city.save

    respond_to do |format|
      if @cov_suspect.update(cov_suspect_params)

        @city = City.find(@cov_suspect.city.id)

        if (@city.cov_negative_count == 0)
          @diff_amount = @city.cov_negative_count + @cov_suspect.amount
        else
          @diff_amount =  @cov_suspect.amount - @city.cov_negative_count
        end

        # @city.cov_positive_count -= @cov_suspect.amount
        @city.cov_negative_count += @cov_suspect.amount
        @city.save
        
        format.html { redirect_to @cov_suspect, notice: 'Cov suspect was successfully updated.' }
        format.json { render :show, status: :ok, location: @cov_suspect }
      else
        format.html { render :edit }
        format.json { render json: @cov_suspect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cov_suspects/1
  # DELETE /cov_suspects/1.json
  def destroy
    authorize @cov_suspect
    
    @city = City.find(@cov_suspect.city.id)
    # @city.cov_positive_count += @cov_suspect.amount
    @city.cov_negative_count -= @cov_suspect.amount
    @city.save
    @cov_suspect.destroy
    respond_to do |format|
      format.html { redirect_to cov_suspects_url, notice: 'Cov suspect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_suspect
      @cov_suspect = CovSuspect.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cov_suspect_params
      params.require(:cov_suspect).permit(:city_id, :amount, :added_at)
    end
end
