class DashboardController < ApplicationController
    def index
       @visitors = Ahoy::Visit.order("started_at DESC").page(params[:page]) 
    end

    def chart_result
        start_date = Date.today
        end_date = start_date - 10
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
          current_date_of_loop = end_date + $i
          #get total amount before current date of loop
          # tambah data positif

          @sum_positive = CovPositive.where('DATE(added_at) < ?',current_date_of_loop.to_s).sum(:amount)
          p "*" * 100
          p @sum_positive
          result_data[0]["data"].push(Array.new([current_date_of_loop.to_s, @sum_positive])) 
          @sum_recovered = CovRecovered.where('DATE(added_at) <= ?',current_date_of_loop).sum(:amount) 
          result_data[1]["data"].push(Array.new([current_date_of_loop.to_s, @sum_recovered])) 
          @sum_died = CovDied.where('DATE(added_at) <= ?',current_date_of_loop).sum(:amount) 
          result_data[2]["data"].push(Array.new([current_date_of_loop.to_s, @sum_died])) 
          @sum_odp = CovOdp.where('DATE(added_at) <= ?',current_date_of_loop).sum(:amount) 
          result_data[3]["data"].push(Array.new([current_date_of_loop.to_s, @sum_odp])) 
          @sum_pdp = CovPdp.where('DATE(added_at) <= ?',current_date_of_loop).sum(:amount) 
          result_data[4]["data"].push(Array.new([current_date_of_loop.to_s, @sum_pdp])) 
      
          $i +=1;
          # puts "done"
        end
        render json: result_data
        # return result_data
    end
end
