class CovRecoveredsController < ApplicationController
  before_action :set_cov_recovered, only: [:show, :edit, :update, :destroy]

  # GET /cov_recovereds
  # GET /cov_recovereds.json
  def index
    # @cov_recovereds = CovRecovered.all.page(params[:page])
    @q = CovRecovered.ransack(params[:q])
    @cov_recovereds = @q.result(distinct: true).order('added_at DESC').page(params[:page])

    authorize @cov_recovereds
  end

  # GET /cov_recovereds/1
  # GET /cov_recovereds/1.json
  def show

    authorize @cov_recovered
  end

  # GET /cov_recovereds/new
  def new
    @cov_recovered = CovRecovered.new

    authorize @cov_recovered
  end

  # GET /cov_recovereds/1/edit
  def edit

    authorize @cov_recovered
  end

  # POST /cov_recovereds
  # POST /cov_recovereds.json
  def create
    @cov_recovered = CovRecovered.new(cov_recovered_params)
    # @cov_recovered.city = City.friendly.find(params[:cov_recovered][:city_id])


    @city = City.find(@cov_recovered.city.id)

    
    if (@city.cov_recovered_count == 0)
      @diff_amount = @city.cov_recovered_count + @cov_recovered.amount
    else
      @diff_amount = @cov_recovered.amount - @city.cov_recovered_count
    end

    @cov_recovered.amount = @diff_amount
    @cov_recovered.save

    @cov_positive = CovPositive.new
    @cov_positive.city = @city
    @cov_positive.amount = @diff_amount * -1
    @cov_positive.added_at = @cov_recovered.added_at
    @cov_positive.save

    @city.cov_recovered_count += @cov_recovered.amount
    @city.cov_positive_count -= @cov_recovered.amount
    @city.save

    respond_to do |format|
      if @cov_recovered.save
        format.html { redirect_to @cov_recovered, notice: 'Cov recovered was successfully created.' }
        format.json { render :show, status: :created, location: @cov_recovered }
      else
        format.html { render :new }
        format.json { render json: @cov_recovered.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cov_recovereds/1
  # PATCH/PUT /cov_recovereds/1.json
  def update

    # @cov_recovered.city = City.friendly.find(params[:cov_recovered][:city_id])
    
    respond_to do |format|

      @city = City.find(@cov_recovered.city.id)
      @city.cov_recovered_count -= @cov_recovered.amount
      @city.cov_positive_count += @cov_recovered.amount
      @city.save

      @cov_positive = CovPositive.new
      @cov_positive.city = @city
      @cov_positive.amount = @cov_recovered.amount * 1
      @cov_positive.added_at = @cov_recovered.added_at
      @cov_positive.save

      if @cov_recovered.update(cov_recovered_params)


       

        @city = City.find(@cov_recovered.city.id)
        
        if (@city.cov_recovered_count == 0)
          @diff_amount = @city.cov_recovered_count + @cov_recovered.amount
        else
          @diff_amount = @cov_recovered.amount - @city.cov_recovered_count
        end

        @cov_recovered.amount = @diff_amount
        @cov_recovered.save


        @cov_positive = CovPositive.new
        @cov_positive.city = @city
        @cov_positive.amount = @diff_amount * -1
        @cov_positive.added_at = @cov_recovered.added_at
        @cov_positive.save

        @city.cov_recovered_count += @cov_recovered.amount
        @city.cov_positive_count -= @cov_recovered.amount
        @city.save



        format.html { redirect_to @cov_recovered, notice: 'Cov recovered was successfully updated.' }
        format.json { render :show, status: :ok, location: @cov_recovered }
      else
        format.html { render :edit }
        format.json { render json: @cov_recovered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cov_recovereds/1
  # DELETE /cov_recovereds/1.json
  def destroy

    authorize @cov_recovered
    
    @city = City.find(@cov_recovered.city.id)
    @city.cov_recovered_count -= @cov_recovered.amount
    @city.cov_positive_count += @cov_recovered.amount
    @city.save


    @cov_positive = CovPositive.new
    @cov_positive.city = @city
    @cov_positive.amount = @cov_recovered.amount * 1
    @cov_positive.added_at = @cov_recovered.added_at
    @cov_positive.save

    @cov_recovered.destroy
    respond_to do |format|
      format.html { redirect_to cov_recovereds_url, notice: 'Cov recovered was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cov_recovered
      @cov_recovered = CovRecovered.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cov_recovered_params
      params.require(:cov_recovered).permit(:city_id, :amount, :added_at)
    end
end
