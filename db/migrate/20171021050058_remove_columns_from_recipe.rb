class RemoveColumnsFromRecipe < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :ingredients, :string
    remove_column :recipes, :method, :string
  end
end
