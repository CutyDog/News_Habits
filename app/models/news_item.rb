class NewsItem < ApplicationRecord
  enum category: { tech: 'tech', economy: 'economy' }
end
