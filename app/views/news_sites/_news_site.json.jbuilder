json.extract! news_site, :id, :title, :rss_url, :created_at, :updated_at
json.url news_site_url(news_site, format: :json)
