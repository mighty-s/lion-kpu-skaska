##
# @author SongEunJoo
# @date   2018.08.21
#
# 레시피 댓글 테이블 생성
#
class CreateCommentRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_recipes do |t|
      t.belongs_to :user        #외래키, 댓글 작성자의 ID
      t.belongs_to :recipe      #외래키, 레시피의 ID
      t.text :content
      t.timestamps
    end
  end
end
