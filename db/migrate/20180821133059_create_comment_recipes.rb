##
# @author SongEunJoo
# @date   2018.08.21
#
# 레시피 댓글 테이블 생성
#
class CreateCommentRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_recipes do |t|

      t.timestamps
    end
  end
end
