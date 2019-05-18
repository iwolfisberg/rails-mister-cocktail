class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @sum ||= 0

    if params[:search]
      @cocktails = Cocktail.where('name LIKE ?', "%#{params[:search]}%")
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
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
    @cocktail = Cocktail.find(params[:id])
    @cocktail.delete

    redirect_to cocktail_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
