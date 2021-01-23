class NewsSite < ApplicationRecord
  enum category: { tech: 'tech', economy: 'economy' }
end
