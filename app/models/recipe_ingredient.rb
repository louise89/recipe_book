class RecipeIngredient < ApplicationRecord
  has_and_belongs_to_many :recipes
  has_and_belongs_to_many :recipes
  belongs_to :recipe_methods

end
