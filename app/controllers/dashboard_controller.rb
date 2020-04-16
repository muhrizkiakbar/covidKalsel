class DashboardController < ApplicationController
    def index
       @visitors = Ahoy::Visit.order("started_at DESC").page(params[:page])
    end

    def chart_result
        start_date = DateTime.now
        end_date = start_date - 7.days
        diff_date = start_date - end_date

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
          
          #get total amount before current date of loop
          # tambah data positif
          current_date_of_loop = ((end_date + $i.day).to_date.to_s + " 23:59:59")
          range_date = ( DateTime.parse("2020-01-01 00:00:00")..DateTime.parse(current_date_of_loop))



          @sum_positive = CovPositive.where(added_at: range_date).sum(:amount)
          p "=" * 100

          @sum_recovered = CovRecovered.where(added_at: range_date).sum(:amount)

          p @sum_recovered
          result_data[1]["data"].push(Array.new([Date.parse(current_date_of_loop.to_s), @sum_recovered]))
          @sum_died = CovDied.where(added_at: range_date).sum(:amount)
          result_data[2]["data"].push(Array.new([Date.parse(current_date_of_loop.to_s), @sum_died]))

          result_data[0]["data"].push(Array.new([Date.parse(current_date_of_loop.to_s), @sum_positive]))

          @sum_odp = CovOdp.where(added_at: range_date).sum(:amount)
          @sum_odp_processed = CovOdpProcessed.where(added_at: range_date).sum(:amount)
          result_data[3]["data"].push(Array.new([Date.parse(current_date_of_loop.to_s), @sum_odp]))
          @sum_pdp = CovPdp.where(added_at: range_date).sum(:amount)
          @sum_pdp_processed = CovPdpProcessed.where(added_at: range_date).sum(:amount)
          result_data[4]["data"].push(Array.new([Date.parse(current_date_of_loop.to_s), @sum_pdp]))

          $i +=1;
          # puts "done"
        end
        render json: result_data
        # return result_data
    end
end
