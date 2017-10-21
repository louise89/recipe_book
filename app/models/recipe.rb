class Recipe < ApplicationRecord
  has_and_belongs_to_many :recipe_ingredients
  has_and_belongs_to_many :recipe_methods
  validates :title, :ingredients, :method, presence: true,
                   length: { minimum: 5 }
  validates :servings, :time, presence: true,
                    length: { minimum: 1 }
end
