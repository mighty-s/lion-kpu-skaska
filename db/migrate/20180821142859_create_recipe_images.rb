class CreateRecipeImages < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_images do |t|
      t.belongs_to :recipes
      t.text :image
      t.timestamps
    end
  end
end
