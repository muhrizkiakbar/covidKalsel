class PublicController < ApplicationController
    skip_before_action :authenticate_user!
    before_action :set_new, only: [:shownew]

    def home
        @cities = City.all
        @hospitals = Hospital.all
        @informations = Information.take(5)
        @positive = City.sum(:cov_positive_count)
        @odp = City.sum(:cov_odp_count)
        @pdp = City.sum(:cov_pdp_count)
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
        render json:
          @city_map.as_json({:code => {:only => [:cov_positive_count] }})
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
