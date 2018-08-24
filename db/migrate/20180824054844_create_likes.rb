class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.belongs_to :user        #외래키 유저ID
      t.belongs_to :recipe      #외래키 레시피ID
      t.timestamps
    end
  end
end
