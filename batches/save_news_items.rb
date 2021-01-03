require 'rss'

class SaveNewsItems
  def self.execute
    sites = NewsSite.all
    sites.each do |site|
      rss = nil
      rss_source = site.rss_url
      rss = RSS::Parser.parse(rss_source)
      rss.items.each.with_index(1) do |item, i|
        next if NewsItem.find_by(link: item.link).present?
        
        NewsItem.create!(
          news_site_id: site.id,
          title: item.title,
          link: item.link,
          published_at: item.pubDate,
          description: item.description
        )
      end
    end
  end
end