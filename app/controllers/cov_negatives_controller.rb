class CovNegativesController < ApplicationController
  before_action :set_cov_negative, only: [:show, :edit, :update, :destroy]

  # GET /cov_negatives
  # GET /cov_negatives.json
  def index
    # @cov_negatives = CovNegative.all.page(params[:page])
    @q = CovNegative.ransack(params[:q])
    @cov_negatives = @q.result(distinct: true).order('added_at DESC').page(params[:page])

    authorize @cov_negatives
  end

  # GET /cov_negatives/1
  # GET /cov_negatives/1.json
  def show

    authorize @cov_negative
  end

  # GET /cov_negatives/new
  def new
    @cov_negative = CovNegative.new

    authorize @cov_negative
  end

  # GET /cov_negatives/1/edit
  def edit

    authorize @cov_negative
  end

  # POST /cov_negatives
  # POST /cov_negatives.json
  def create
    @cov_negative = CovNegative.new(cov_negative_params)

    @city = City.find(@cov_negative.city.id)


    if (@city.cov_negative_count == 0)
      @diff_amount = @city.cov_negative_count + @cov_negative.amount
    else
      @diff_amount =  @cov_negative.amount - @city.cov_negative_count
    end

    @cov_negative.amount = @diff_amount
    @cov_negative.save

    # @city.cov_positive_count -= @diff_amount
    @city.cov_negative_count += @diff_amount
    @city.save

    respond_to do |format|
      if @cov_negative.save
        format.html { redirect_to @cov_negative, notice: 'Cov negative was successfully created.' }
        format.json { render :show, status: :created, location: @cov_negative }
      else
        format.html { render :new }
        format.json { render json: @cov_negative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cov_negatives/1
  # PATCH/PUT /cov_negatives/1.json
  def update

    @city = City.find(@cov_negative.city.id)
  
    # @city.cov_positive_count += @cov_negative.amount
    @city.cov_negative_count -= @cov_negative.amount
    @city.save

    respond_to do |format|
      if @cov_negative.update(cov_negative_params)

        @city = City.find(@cov_negative.city.id)

        if (@city.cov_negative_count == 0)
          @diff_amount = @city.cov_negative_count + @cov_negative.amount
        else
          @diff_amount =  @cov_negative.amount - @city.cov_negative_count
        end

        # @city.cov_positive_count -= @cov_negative.amount
        @city.cov_negative_count += @cov_negative.amount
        @city.save
        
        format.html { redirect_to @cov_negative, notice: 'Cov negative was successfully updated.' }
        format.json { render :show, status: :ok, location: @cov_negative }
      else
        format.html { render :edit }
        format.json { render json: @cov_negative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cov_negatives/1
  # DELETE /cov_negatives/1.json
  def destroy

    authorize @cov_negative
    
    @city = City.find(@cov_negative.city.id)
    # @city.cov_positive_count += @cov_negative.amount
    @city.cov_negative_count -= @cov_negative.amount
    @city.save

    @cov_negative.destroy
    respond_to do |format|
      format.html { redirect_to cov_negatives_url, notice: 'Cov negative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_negative
      @cov_negative = CovNegative.friendly.find(params[:id])
    end


    # Only allow a list of trusted parameters through.
    def cov_negative_params
      params.require(:cov_negative).permit(:city_id, :amount, :added_at)
    end
end
