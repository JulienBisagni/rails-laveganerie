class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe, index:true, foreign_key: true
      t.references :ingredient, index:true, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
