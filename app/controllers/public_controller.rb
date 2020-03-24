class PublicController < ApplicationController
    skip_before_action :authenticate_user!

    def home 
        
    end

    def news
    end

    def faq
    end

    def contact
    end
end
