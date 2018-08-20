##
# @author sight
# @date   2018.08.19
#
# 유저 테이블 생성
#
#
class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email             # 이메일   (로그인시 id 역활)
      t.string :password_digest   # 비밀번호 (_digest 붙이면 bcrypt 잼이 암호화 )
      t.string :nickname          # 닉네임
      t.string :name              # 이름
      t.string :phone             # 전화번호
      t.string :gender            # 성별
      t.string :grade             # 관리자
      t.string :status, default: :normal # 현재 유저계정 상태
      t.timestamps
    end
  end
end
