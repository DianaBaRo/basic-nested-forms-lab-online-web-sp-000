class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_type: 'ingedient 1')
    @recipe.ingredients.build(ingredient_type: 'ingedient 2')
  end

  def create
  end
end
