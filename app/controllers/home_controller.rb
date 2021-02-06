class HomeController < ApplicationController
  
  def top
    @it_items = NewsItem.it.order(published_at: :desc).limit(4)
    @economy_items = NewsItem.economy.order(published_at: :desc).limit(4)
    @business_items = NewsItem.business.order(published_at: :desc).limit(4)
    @sports_items = NewsItem.sports.order(published_at: :desc).limit(4)
    @life_items = NewsItem.life.order(published_at: :desc).limit(4)
    @entertainment_items = NewsItem.entertainment.order(published_at: :desc).limit(4)
    @domestic_items = NewsItem.domestic.order(published_at: :desc).limit(4)
    @international_items = NewsItem.international.order(published_at: :desc).limit(4)
    
    user = current_user
    @name = user.name
  end
  
  def habit
    user = current_user
    @name = user.name
  end
  
end
