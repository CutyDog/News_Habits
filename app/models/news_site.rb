class NewsSite < ApplicationRecord
  enum category: { it: 'it', economy: 'economy', business: 'business', sports: 'sports', life: 'life', entertainment: 'entertainment', domestic: 'domestic', international: 'international' }
end
