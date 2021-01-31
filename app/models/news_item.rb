class NewsItem < ApplicationRecord
  enum category: { it: 'it', economy: 'economy', business: 'business', sports: 'sports', life: 'life', entertainment: 'entertainment', domestic: 'domestic', international: 'international' }
  has_many :comments
  has_many :read_logs
end
