class AddCocktailForeignKeyToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :cocktail, index: true
  end
end
