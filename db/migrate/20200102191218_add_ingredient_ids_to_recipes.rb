class AddIngredientIdsToRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :title
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
