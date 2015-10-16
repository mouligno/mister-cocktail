class AddCocktailPhotoToCocktails < ActiveRecord::Migration
  def change
    add_column :cocktails, :cocktail_photo, :string
  end
end
