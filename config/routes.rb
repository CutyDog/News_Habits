Rails.application.routes.draw do
  root to: 'news_items#index'
  resources :news_items
  resources :news_sites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
