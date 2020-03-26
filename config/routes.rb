Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

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

    resources :roles do
      resources :role_permissions
    end
    scope "/management" do
      resources :users
    end
  end

  get 'news' => 'public#news', :as => 'public_news'
  get 'new/:new_id' => 'public#shownew', :as => 'public_new'
  get 'faq' => 'public#faq', :as => 'public_faq'
  get 'contact' => 'public#contact', :as => 'public_contact'
  get 'cov_map' => 'public#cov_map', :as => 'public_cov_map'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
