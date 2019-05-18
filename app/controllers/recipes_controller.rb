class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :update]

  def new
    @recipe = Recipe.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @recipe.cocktail = @cocktail

    if @recipe.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    @cocktail = @recipe.cocktail
  end

  def update
    @cocktail = @recipe.cocktail
    @recipe.cocktail = @cocktail
    @recipe.update(recipe_params)

    if @recipe.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:description)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
