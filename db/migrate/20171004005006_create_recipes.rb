class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :serving
      t.string :time
      t.text :ingredient
      t.text :method

      t.timestamps
    end
  end
end
