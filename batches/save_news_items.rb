require 'rss'

class SaveNewsItems
  def self.execute
    sites = NewsSite.all
    sites.each do |site|
      rss = nil
      rss_source = site.rss_url
      rss = RSS::Parser.parse(rss_source, validate: false)
      rss.items.each.with_index(1) do |item, i|
        next if NewsItem.find_by(link: item.link).present?
        
        thumbnail_url = begin
          Nokogiri::HTML(open(item.link), nil, 'utf-8').css('//meta[property="og:image"]/@content').to_s
        rescue
          ''
        end
        
        news_item = NewsItem.create!(
          news_site_id: site.id,
          title: item.title,
          link: item.link,
          published_at: item.pubDate,
          category: site.category,
          thumbnail_url: thumbnail_url,
          description: item.description
        )
      end
    end
  end
end