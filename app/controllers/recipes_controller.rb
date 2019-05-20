class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :update]
  before_action :set_cocktail, only: [:new, :create]

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
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

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
