Rails.application.routes.draw do
  
  devise_for :users
  root to: 'home#top'
  get "home/habit"
  
  resources :news_items, only: [:show] do
    resources :comments
    resources :read_logs, only: [:show, :create, :destroy]
    get 'search', on: :collection
    get 'read_log', on: :collection
  end
  
  resources :news_sites
  
  resources :home do
    get "home/habit"
    resources :habit
  end
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
