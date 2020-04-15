class CovDiedsController < ApplicationController
  before_action :set_cov_died, only: [:show, :edit, :update, :destroy]

  # GET /cov_dieds
  # GET /cov_dieds.json
  def index
    # @cov_dieds = CovDied.all.page(params[:page])
    @q = CovDied.ransack(params[:q])
    @cov_dieds = @q.result(distinct: true).order('added_at DESC').page(params[:page])

    authorize @cov_dieds
  end

  # GET /cov_dieds/1
  # GET /cov_dieds/1.json
  def show
    authorize @cov_died
  end

  # GET /cov_dieds/new
  def new
    @cov_died = CovDied.new
    authorize @cov_died
  end

  # GET /cov_dieds/1/edit
  def edit
    authorize @cov_died
  end

  # POST /cov_dieds
  # POST /cov_dieds.json
  def create


    @cov_died = CovDied.new(cov_died_params)
    # @cov_died.city = City.friendly.find(params[:cov_died][:city_id])

    

    @city = City.find(@cov_died.city.id)


    if (@city.cov_died_count == 0)

      @diff_amount = @city.cov_died_count + @cov_died.amount
    else
      @diff_amount =  @cov_died.amount - @city.cov_died_count
    end
    

    @cov_died.amount = @diff_amount
    @cov_died.save

    @city.cov_died_count += @diff_amount
    @city.cov_positive_count -= @diff_amount
    @city.save


    @cov_positive = CovPositive.new
    @cov_positive.city = @city
    @cov_positive.amount = @diff_amount * -1
    @cov_positive.added_at = @cov_died.added_at
    @cov_positive.save

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
    @city = City.find(@cov_died.city.id)
    @city.cov_died_count -= @cov_died.amount
    @city.cov_positive_count += @cov_died.amount
    @city.save


    @cov_positive = CovPositive.new
    @cov_positive.city = @city
    @cov_positive.amount = @cov_died.amount * 1
    @cov_positive.added_at = @cov_died.added_at
    @cov_positive.save
    
    # @cov_died.city = City.friendly.find(params[:cov_died][:city_id])

    respond_to do |format|
      if @cov_died.update(cov_died_params)

        @city = City.find(@cov_died.city)

        

        if (@city.cov_died_count == 0)
          @diff_amount = @city.cov_died_count + @cov_died.amount
        else
          @diff_amount =  @cov_died.amount - @city.cov_died_count
        end
        

        @cov_died.amount = @diff_amount
        @cov_died.save

        @city.cov_died_count += @cov_died.amount
        @city.cov_positive_count -= @cov_died.amount
        @city.save


        @cov_positive = CovPositive.new
        @cov_positive.city = @city
        @cov_positive.amount = @diff_amount * -1
        @cov_positive.added_at = @cov_died.added_at
        @cov_positive.save
        
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

    authorize @cov_died
    
    @city = City.find(@cov_died.city.id)
    @city.cov_died_count -= @cov_died.amount
    @city.cov_positive_count += @cov_died.amount
    @city.save


    @cov_positive = CovPositive.new
    @cov_positive.city = @city
    @cov_positive.amount = @cov_died.amount * 1
    @cov_positive.added_at = @cov_died.added_at
    @cov_positive.save

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
      params.require(:cov_died).permit(:amount,:city_id, :added_at)
    end
end
