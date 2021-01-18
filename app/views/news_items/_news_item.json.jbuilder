json.extract! news_item, :id, :news_site_id, :title, :description, :link, :published_at, :created_at, :updated_at
json.url news_item_url(news_item, format: :json)
