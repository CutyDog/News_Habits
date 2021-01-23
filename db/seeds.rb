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
    title: 'YahooNews テクノロジー',
    rss_url: 'https://news.yahoo.co.jp/rss/categories/it.xml',
    category: 'tech'
  },
  {
    id: 2,
    title: 'YahooNews 経済',
    rss_url: 'https://news.yahoo.co.jp/rss/categories/business.xml',
    category: 'economy'
  },
  {
    id: 3,
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