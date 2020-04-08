class DashboardController < ApplicationController
    def index
       @visitors = Ahoy::Visit.order("started_at DESC").page(params[:page]) 
    end
end
