class RecipesController < ApplicationController

def show
  @recipe = Recipe.find(params[:id])
end


def new
end

def create
  @recipe = Recipe.new(  params.require(:recipe).permit(:title, :serving, :time, :ingredient, :method))

  @recipe.save
  redirect_to @recipe
end

private
def recipe_params
  params.require(:recipe).permit(:title, :serving, :time, :ingredient, :method)
end


end
