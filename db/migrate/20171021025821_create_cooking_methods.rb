class CreateCookingMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :cooking_methods do |t|
      t.string :action

      t.timestamps
    end
  end
end
