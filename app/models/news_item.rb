class NewsItem < ApplicationRecord
  enum category: { tech: 'tech', economy: 'economy' }
  has_many :comments
end
