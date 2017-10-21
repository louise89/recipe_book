class CreateRecipeMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_methods do |t|
      t.integer :cooking_method_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
