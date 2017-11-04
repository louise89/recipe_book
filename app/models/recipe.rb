class Recipe < ApplicationRecord
  has_and_belongs_to_many :recipe_ingredients
  has_and_belongs_to_many :recipe_methods
  validates :title, presence: true,
                   length: { minimum: 5 }
  validates :servings, :time, presence: true,
                    length: { minimum: 1 }


def recipe_id
  @recipe_id ||= Recipe.find(id)
end

def recipe_ingredients
  @rec_ing = RecipeIngredient.find_by("recipe_id = ?", recipe_id)
  @rec_ing.ingredient_id
end

def ingredient_name
  @ing_name  = Ingredient.find_by("id = ?", recipe_ingredients)
  @ing_name.ingredient
end

end
