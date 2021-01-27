class NewsItem < ApplicationRecord
  enum category: { tech: 'tech', economy: 'economy', international: 'international' }
  has_many :comments
end
