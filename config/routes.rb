Rails.application.routes.draw do
  resources :news
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
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
