class RecipesController < ApplicationController
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
    @recipe = Recipe.find(params[:id])
    @cocktail = @recipe.cocktail
  end

  def update
    recipe = Recipe.find(params[:id])
    @cocktail = @recipe.cocktail
    @recipe.cocktail = @cocktail

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
end
