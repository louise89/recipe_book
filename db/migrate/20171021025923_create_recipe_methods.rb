class CreateRecipeMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_methods do |t|
      t.int :cooking_method_id
      t.int :recipe_id

      t.timestamps
    end
  end
end
