class RecipesController < ApplicationController

   http_basic_authenticate_with name: "Louise", password: "secret", except: [:index, :show]


  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  #  @recipe_ingredient = RecipeIngredient.find(params[:id])
#  @ingredient = Ingredient.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @ingredient = Ingredient.new(params[:ingredient])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.create(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

private
  def recipe_params
    params.require(:recipe).permit(:title, :servings, :time)
  end

  end
