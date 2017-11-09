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
    ingredients = []
    @rec_ing = RecipeIngredient.where("recipe_id = ?", recipe_id).each do |i|
      ingredients << i.ingredient_id
    end
    ingredients
  end

  def ingredient_name
    ingredient_name = []
    @ing_name  = Ingredient.find(recipe_ingredients).each do |n|
      ingredient_name << n.ingredient
    end
    ingredient_name
  end

  def recipe_methods
    methods = []
    @rec_meth = RecipeMethod.where("recipe_id = ?", recipe_id).each do |i|
      methods << i.cooking_method_id
    end
    methods
  end

  def cooking_method_name
    cooking_method_name = []
    @cook_meth  = CookingMethod.find(recipe_methods).each do |n|
      cooking_method_name << n.action
    end
    cooking_method_name
  end

  def category_name=(name)
     self.category = Ingredient.find_or_create_by(:ingredient => ingredient)
  end
end
