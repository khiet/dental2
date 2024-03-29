Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :homes, path: 'home', only: [:show]
  resources :workers, path: 'abount_us', only: [:index, :show]
  resources :products, path: 'what_we_do', only: [:index, :show]
  resources :directions, path: 'find_us', only: [:index]
  resources :advices, path: 'advice', only: [:index, :show]
  resources :legals, path: 'legal', only: [:show]
  resources :contacts, only: [:create]

  resources :admins, path: 'admin', only: [:index]
  namespace :admin do
    resources :workers
    resources :products
    resources :product_categories
    resources :promotions
  end

  # Defines the root path route ("/")
  root "homes#show"
end
