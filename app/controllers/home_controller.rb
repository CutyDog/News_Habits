class HomeController < ApplicationController
  
  def top
    @tech_items = NewsItem.tech.order(published_at: :desc).limit(4)
    @economy_items = NewsItem.economy.order(published_at: :desc).limit(4)
  end
  
  def habit
  end
  
end
