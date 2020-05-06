class Api::V1::WhatsappsController < ActionController::Base
    def post_api_angka_sebaran
        p params["appPackageName"]
        @cov_positive_count = City.sum('cov_positive_count')
        @cov_odp_count = City.sum('cov_odp_count')
        @cov_pdp_count = City.sum('cov_pdp_count')
        @cov_died_count = City.sum('cov_died_count')
        @cov_recovered_count = City.sum('cov_recovered_count')
        @cov_positive_total = @cov_positive_count + @cov_died_count + @cov_recovered_count
        @cities = City.all
        @city_last_updated = @cities.order("updated_at DESC").first


        @text = { "message" => "Angka Sebaran di Kalimantan Selatan \nTotal Positif (Dirawat, Meninggal, Sembuh) : #{@cov_positive_total} \nDirawat : #{@cov_positive_count} \nSembuh : #{@cov_recovered_count} \nMeninggal : #{@cov_died_count} \nODP : #{@cov_odp_count} \nPDP : #{@cov_pdp_count }\n ."}
        render json: {
            replies: [
                    @text
                ]

        }
    end
end