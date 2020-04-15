class PublicController < ApplicationController
    skip_before_action :authenticate_user!
    before_action :set_new, only: [:shownew]
    before_action :set_city_params, only: [:city_info, :chart_line_result_of_city,:chart_pie_result_of_city]

    def home
        @cities = City.all
        @hospitals = Hospital.order("is_primary DESC NULLS LAST")
        @informations = Information.take(5)
        @info_practices = InfoPractice.order("created_at DESC")
        @letters = Letter.order("created_at DESC")
        @cov_positive_count = City.sum('cov_positive_count')
        @cov_odp_count = City.sum('cov_odp_count')
        @cov_pdp_count = City.sum('cov_pdp_count')
        @cov_died_count = City.sum('cov_died_count')
        @cov_recovered_count = City.sum('cov_recovered_count')
        @cov_positive_total = @cov_positive_count + @cov_died_count + @cov_recovered_count

        @visitor_count = Ahoy::Visit.count

        @city_last_updated = @cities.order("updated_at DESC").first
    end

    def news
        @informations = Information.all.page(params[:page])
        @visitor_count = Ahoy::Visit.count
    end

    def shownew

        @visitor_count = Ahoy::Visit.count
    end

    def faq
        @visitor_count = Ahoy::Visit.count
    end

    def contact
        @cities = City.all
        @hospitals = Hospital.all
        @visitor_count = Ahoy::Visit.count
    end

    def cov_map
        @city_map = City.select('code, name, cov_positive_count, cov_died_count, cov_recovered_count, cov_odp_count, cov_pdp_count, concat(cov_positive_count+cov_died_count+cov_recovered_count)')
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


    def city_info

    end

    def chart_line_result_of_city
        start_date = Date.today
        end_date = start_date - 7
        diff_date = start_date - end_date
        city = @city

        $i = 0

        result_data=[
          {
            "name" => "Positif",
            "data" => [
              # ["2","2"],
              # ["4","3"]
            ]
          },
          {
            "name" => "Sembuh",
            "data" => []
          },
          {
            "name" => "Meninggal",
            "data" => []
          },
          {
            "name" => "ODP",
            "data" => []
          },
          {
            "name" => "PDP",
            "data" => []
          }
        ]

        until $i >= diff_date.to_i  do

          #get date
          current_date_of_loop = end_date + $i
          #get total amount before current date of loop
          # tambah data positif

          @sum_positive = CovPositive.where('DATE(added_at) < ?',current_date_of_loop.to_s).where('city_id = ?',city.id).sum(:amount)

          @sum_recovered = CovRecovered.where('DATE(added_at) <= ?',current_date_of_loop).where('city_id = ?',city.id).sum(:amount)
          result_data[1]["data"].push(Array.new([current_date_of_loop.to_s, @sum_recovered]))
          @sum_died = CovDied.where('DATE(added_at) <= ?',current_date_of_loop).where('city_id = ?',city.id).sum(:amount)
          result_data[2]["data"].push(Array.new([current_date_of_loop.to_s, @sum_died]))

          result_data[0]["data"].push(Array.new([current_date_of_loop.to_s, @sum_positive-@sum_died-@sum_recovered]))

          @sum_odp = CovOdp.where('DATE(added_at) <= ?',current_date_of_loop).where('city_id = ?',city.id).sum(:amount)
          @sum_odp_processed = CovOdpProcessed.where('DATE(added_at) <= ?',current_date_of_loop).where('city_id = ?',city.id).sum(:amount)
          result_data[3]["data"].push(Array.new([current_date_of_loop.to_s, @sum_odp-@sum_odp_processed]))
          @sum_pdp = CovPdp.where('DATE(added_at) <= ?',current_date_of_loop).where('city_id = ?',city.id).sum(:amount)
          @sum_pdp_processed = CovPdpProcessed.where('DATE(added_at) <= ?',current_date_of_loop).where('city_id = ?',city.id).sum(:amount)
          result_data[4]["data"].push(Array.new([current_date_of_loop.to_s, @sum_pdp-@sum_pdp_processed]))

          $i +=1;
          # puts "done"
        end
        render json: result_data
        # return result_data
    end

    def chart_pie_result_of_city
        start_date = Date.today
        city = @city

        p "*" * 100
        p city

        # $i = 0

        result_data=[
           ["Positif"],
            ["Sembuh"],
            ["Meninggal"],
            ["ODP"],
            ["PDP"]
        ]

        # until $i >= diff_date.to_i  do

          #get date
          current_date_of_loop = start_date
          #get total amount before current date of loop
          # tambah data positif

          @sum_positive = CovPositive.where('DATE(added_at) = ?',start_date.to_s).where('city_id = ?',city.id).sum(:amount)

          @sum_recovered = CovRecovered.where('DATE(added_at) = ?',start_date).where('city_id = ?',city.id).sum(:amount)
          result_data[1].push(@sum_recovered)
          @sum_died = CovDied.where('DATE(added_at) = ?',start_date).where('city_id = ?',city.id).sum(:amount)
          result_data[2].push(@sum_died)

          result_data[0].push(@sum_positive-@sum_died-@sum_recovered)

          @sum_odp = CovOdp.where('DATE(added_at) = ?',start_date).where('city_id = ?',city.id).sum(:amount)
          @sum_odp_processed = CovOdpProcessed.where('DATE(added_at) = ?',start_date).where('city_id = ?',city.id).sum(:amount)
          result_data[3].push(@sum_odp-@sum_odp_processed)
          @sum_pdp = CovPdp.where('DATE(added_at) = ?',start_date).where('city_id = ?',city.id).sum(:amount)
          @sum_pdp_processed = CovPdpProcessed.where('DATE(added_at) = ?',start_date).where('city_id = ?',city.id).sum(:amount)
          result_data[4].push(@sum_pdp-@sum_pdp_processed)

        #   $i +=1;
          # puts "done"
        # end
        render json: result_data
        # return result_data
    end


    def chart_result_of_covid
        start_date = Date.today
        end_date = start_date - 7
        diff_date = start_date - end_date


        $i = 1

        result_data=[
          {
            "name" => "Positif",
            "data" => [
              # ["2","2"],
              # ["4","3"]
            ]
          },
          {
            "name" => "Sembuh",
            "data" => []
          },
          {
            "name" => "Meninggal",
            "data" => []
          },
          {
            "name" => "ODP",
            "data" => []
          },
          {
            "name" => "PDP",
            "data" => []
          }
        ]

        until $i > diff_date.to_i  do

          #get date
          current_date_of_loop = end_date + $i
          #get total amount before current date of loop
          # tambah data positif

          @sum_positive = CovPositive.where('DATE(added_at) <= ?',current_date_of_loop.to_s).sum(:amount)
          p "*" * 100
          p @sum_positive
          @sum_recovered = CovRecovered.where('DATE(added_at) <= ?',current_date_of_loop).sum(:amount)
          result_data[1]["data"].push(Array.new([current_date_of_loop.to_s, @sum_recovered]))
          @sum_died = CovDied.where('DATE(added_at) <= ?',current_date_of_loop).sum(:amount)
          result_data[2]["data"].push(Array.new([current_date_of_loop.to_s, @sum_died]))

          result_data[0]["data"].push(Array.new([current_date_of_loop.to_s, @sum_positive-@sum_died-@sum_recovered]))

          @sum_odp = CovOdp.where('DATE(added_at) <= ?',current_date_of_loop).sum(:amount)
          @sum_odp_processed = CovOdpProcessed.where('DATE(added_at) <= ?',current_date_of_loop).sum(:amount)
          result_data[3]["data"].push(Array.new([current_date_of_loop.to_s, @sum_odp-@sum_odp_processed]))
          @sum_pdp = CovPdp.where('DATE(added_at) <= ?',current_date_of_loop).sum(:amount)
          @sum_pdp_processed = CovPdpProcessed.where('DATE(added_at) <= ?',current_date_of_loop).sum(:amount)
          result_data[4]["data"].push(Array.new([current_date_of_loop.to_s, @sum_pdp-@sum_pdp_processed]))

          $i +=1;
          # puts "done"
        end
        render json: result_data
        # return result_data
    end

    private

    def set_new
        @information = Information.friendly.find(params[:new_id])
    end

    def set_city_params
        p "*" * 100
        @city = City.friendly.find(params[:city_id])
        p @city
    end

end
