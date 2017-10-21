class Recipe < ApplicationRecord
  
  validates :title, :ingredients, :method, presence: true,
                   length: { minimum: 5 }
  validates :servings, :time, presence: true,
                    length: { minimum: 1 }
end
