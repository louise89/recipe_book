class RecipeMethod < ApplicationRecord
  has_and_belongs_to_many :recipes
  has_and_belongs_to_many :recipes
  has_many :recipe_ingredients
end
