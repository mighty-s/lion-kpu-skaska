class CreateRecipeImages < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_images do |t|
      t.belongs_to :recipe
      t.string :image
      t.timestamps
    end
  end
end
