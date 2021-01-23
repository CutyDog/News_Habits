Rails.application.routes.draw do
  
  root to: 'home#top'
  get "home/habit"
  
  resources :news_items do
    resources :show
  end
  
  resources :news_sites
  
  resources :home do
    get "home/habit"
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
