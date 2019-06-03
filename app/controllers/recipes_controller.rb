class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_type: 'ingredient 1')
    @recipe.ingredients.build(ingredient_type: 'ingredient 2')
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes:[:name,:quantity], :ingredient_type)
  end
end
