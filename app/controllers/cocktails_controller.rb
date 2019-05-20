class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :destroy]

  def index
    if params[:search]
      @cocktails = Cocktail.where('name LIKE ?', "%#{params[:search]}%")
    else
      @cocktails = Cocktail.all
    end

    @sum ||= 0
  end

  def show
    @doses = @cocktail.doses
    @recipe = @cocktail.recipe
    @review = @cocktail.reviews.build
    @reviews = @cocktail.reviews
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to new_cocktail_recipe_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail.delete

    redirect_to cocktail_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
