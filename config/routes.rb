Rails.application.routes.draw do

  scope "/backoffice" do

    resources :information
    resources :cov_dieds
    resources :cov_pdps
    resources :cov_odps
    resources :cov_recovereds
    resources :cov_negatives
    resources :cov_positives
    resources :hospitals
    resources :cities
    resources :permissions
    
    resources :roles do
      resources :role_permissions
    end
    scope "/management" do
      resources :users
    end
  end

  devise_for :users

  root 'public#home'
  get 'new' => 'public#news', :as => 'public_news'    
  get 'faq' => 'public#faq', :as => 'public_faq'    
  get 'contact' => 'public#new', :as => 'public_contact'    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
