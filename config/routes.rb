Rails.application.routes.draw do
  
  devise_for :users
  root to: 'home#top'
  get "home/habit"
  
  resources :news_items, only: [:show] do
    resources :comments
    get 'search', on: :collection
  end
  
  resources :news_sites
  
  resources :home do
    get "home/habit"
  end
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
