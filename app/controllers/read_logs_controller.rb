class ReadLogsController < ApplicationController
  def create
    @news_item = NewsItem.find(params[:news_item_id])
    @read_log_news_item = @news_item.read_log_news_items.new
    @read_log_news_item.user = current_user
    
    @read_log_news_item.save
    redirect_to news_item_path(@read_log_news_item.news_item), notice: 'read_log_news_item was successfully registrated.'
  end

  def destroy
    @news_item = NewsItem.find(params[:news_item_id])
    @read_log_news_item = @news_item.read_log_news_items.find(params[:id])
    @read_log_news_item.destroy
    redirect_to news_item_path(@news_item), notice: 'read_log_news_item was successfully destroyed.'
  end  
end
