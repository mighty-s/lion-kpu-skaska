class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.string :title
      t.string :content
      t.string :customer_id
      t.integer :flag
      t.integer :showed

      t.timestamps
    end
  end
end
