class IngredientsController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.new
    @recipe_ingredient = RecipeIngredient.find(params[:ingredient_id])
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.find(params[:recipe_ingredient][:ingredient_id])
    @recipe_ingredient = RecipeIngredient.create(
    recipe_id: @recipe_id,
    ingredient_id: @ingredient_id,
    #amount: params[:recipe_ingredient][:amount]
    )
    if @recipe_ingredient.save
    redirect_to recipe_path(@recipe)
  end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:ingredient, {:recipe_id=>[]})
  end

end
