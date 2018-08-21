##
# @author SongEunJoo
# @date   2018.08.21
#
# 공지사항 댓글 테이블 생성
#
class CreateCommentNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_notices do |t|

      t.timestamps
    end
  end
end
