##
# @author SongEunJoo
# @date   2018.08.21
#
# 공지 테이블 생성
#
#
class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.belongs_to :user          #외래키 유저ID
      t.string :title             #공지사항 제목
      t.text :content             #공지사항 내용
      t.timestamps
    end
  end
end
