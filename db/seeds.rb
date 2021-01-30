# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {
    id: 1,
    title: 'YahooNews IT',
    rss_url: 'https://news.yahoo.co.jp/rss/categories/it.xml',
    category: 'it'
  },
  {
    id: 2,
    title: 'YahooNews 経済',
    rss_url: 'https://news.yahoo.co.jp/rss/categories/business.xml',
    category: 'economy'
  },
  {
    id: 3,
    title: 'BusinessNetwork ビジネス',
    rss_url: 'https://businessnetwork.jp/DesktopModules/BusinessNetwork_Rss/BusinessNetwork_Rss.aspx?rss=3&artctid=13',
    category: 'business'
  },
  {
    id: 4,
    title: 'YahooNews スポーツ',
    rss_url: 'https://news.yahoo.co.jp/rss/topics/sports.xml',
    category: 'sports'
  },
  {
    id: 5,
    title: 'YahooNews 生活',
    rss_url: 'https://news.yahoo.co.jp/rss/categories/life.xml',
    category: 'life'
  },
  {
    id: 6,
    title: 'YahooNews エンタメ',
    rss_url: 'https://news.yahoo.co.jp/rss/topics/entertainment.xml',
    category: 'entertainment'
  },
  {
    id: 7,
    title: 'YahooNews 国内',
    rss_url: 'https://news.yahoo.co.jp/rss/categories/domestic.xml',
    category: 'domestic'
  },
  {
    id: 8,
    title: 'YahooNews 国際',
    rss_url: 'https://news.yahoo.co.jp/rss/categories/world.xml',
    category: 'international'
  },
].each do |hash|
  news_site = NewsSite.find_or_initialize_by(id: hash[:id])
  news_site.title = hash[:title]
  news_site.rss_url = hash[:rss_url]
  news_site.category = hash[:category]
  news_site.save!
end