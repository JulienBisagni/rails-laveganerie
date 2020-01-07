class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.integer :preparation_time
      t.string :image_url
      t.string :video_url

      t.timestamps
    end
  end
end
