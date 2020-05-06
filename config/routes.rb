Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  telegram_webhook TelegramWebHooksController
  #get 'telegram/start' => 'telegram_web_hooks#start'

  devise_scope :user do
    authenticated :user do
      root 'dashboard#index'
    end

    unauthenticated do
      root 'public#home'
    end
    # root to: "devise/sessions#new"
  end


  scope "/backoffice" do

    get "chart_result" => 'dashboard#chart_result', :as => 'chart_result'

    get "/telegram_chat_by_username" => 'telegram_chat#index_chat', :as => 'telegram_chat_by_username' 
    get "/telegram_messages" => 'telegram_chat#index_send_chat', :as => 'telegram_messages'
    get "/telegram_messages/new" => 'telegram_chat#new_message', :as => 'new_telegram_message'
    post "/telegram_message" => 'telegram_chat#send_message', :as => 'send_telegram_message'

    resources :information

    resources :cov_dieds
    resources :cov_pdps
    resources :cov_odps
    resources :cov_recovereds
    resources :cov_negatives
    resources :cov_positives

    resources :cov_pdp_processeds
    resources :cov_odp_processeds

    resources :hospitals
    resources :cities
    # resources :permissions

    resources :info_practices
    
    resources :letters

    resources :roles do
      resources :role_permissions
    end
    scope "/management" do
      resources :users
    end
  end
  namespace :api do
    namespace :v1 do
      post 'angkasebaran' => 'whatsapps#post_api_angka_sebaran', :as => 'api_angkasebaran'
    end
  end


  get 'news' => 'public#news', :as => 'public_news'
  get 'new/:new_id' => 'public#shownew', :as => 'public_new'
  get 'faq' => 'public#faq', :as => 'public_faq'
  get 'contact' => 'public#contact', :as => 'public_contact'
  get 'cov_map' => 'public#cov_map', :as => 'public_cov_map'
  get 'city/:city_id' => 'public#city_info', :as => 'public_city'
  get 'city/chart/line/:city_id' => 'public#chart_line_result_of_city', :as => 'public_city_chart_line_of_city'
  get 'city/chart/pie/:city_id' => 'public#chart_pie_result_of_city', :as => 'public_city_chart_pie_of_city'
  get 'chart/result/covid' => 'public#chart_result_of_covid', :as => 'chart_result_of_covid'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
