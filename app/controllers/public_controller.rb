class PublicController < ApplicationController
    skip_before_action :authenticate_user!
    before_action :set_new, only: [:shownew]

    def home
        @cities = City.all
        @hospitals = Hospital.all
        @informations = Information.take(5)
        @cov_positive_count = City.sum('cov_positive_count')
        @cov_odp_count = City.sum('cov_odp_count')
        @cov_pdp_count = City.sum('cov_pdp_count')

        @city_last_updated = @cities.order(:updated_at).first
    end

    def news
        @informations = Information.all.page(params[:page])
    end

    def shownew

    end

    def faq
    end

    def contact
        @cities = City.all
        @hospitals = Hospital.all
    end

    def cov_map
        @city_map = City.all
        render json: @city_map
        # respond_to do |format|
        #   format.html
        #   format.json do
        #     render json: {
        #       "code": @city_map,
        #       "data": {
        #         "pos": @city_map.cov_positive_count,
        #         "pdp": @city_map.cov_pdp_count,
        #         "odp": @city_map.cov_odp_count
        #       }
        #     }.to_json
        #   end
        # end
    end

    private

    def set_new
        @information = Information.friendly.find(params[:new_id])
    end

end
