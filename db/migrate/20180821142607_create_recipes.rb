class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|

      t.string :title               # 제목
      t.string :content             # 내용
      t.string :hash_tag            # 해시 태그
      t.integer :view, default: 0   # 조회수
      t.belongs_to :user            # 유저 외래키 (작성자)

      t.timestamps
    end
  end
end
