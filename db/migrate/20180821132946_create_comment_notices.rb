##
# @author SongEunJoo
# @date   2018.08.21
#
# 공지사항 댓글 테이블 생성
#
class CreateCommentNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_notices do |t|
      t.belongs_to :notice      #외래키, 공지사항ID
      t.belongs_to :user        #외래키, 댓글 작성자의 ID
      t.text :content
      t.timestamps
    end
  end
end
