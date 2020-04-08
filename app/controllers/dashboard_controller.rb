class DashboardController < ApplicationController
    def index
       @visitors = Ahoy::Visit.all.page(params[:page]) 
    end
end
