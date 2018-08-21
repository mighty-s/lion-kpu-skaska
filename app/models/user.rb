#
# @author sight
# @date   2018.08.19
#
# 유저 모델
# 비밀번호는 암호화 되어있다
#
class User < ApplicationRecord

  #외래키 설정 1:N
  has_many :recipes
  has_many :notices           #(관리자)유저는 여러개의 공지사항 작성 가능
  has_many :comment_notices   #유저는 여러개의 공지사항댓글가능
  #has_many :comment_recipes  #유저는 여러개의 레시피댓글가능
 
  # 비밀번호 암호화 (bcrypt gem)
  has_secure_password

  # 현재 유저가 로그인 가능한지 알려주는 함수
  #
  # @param  email  사용자로 부터 받은 이메일 값
  # @param  pw     사용자로 부터 받은 비밀번호
  #
  # @return user  유저 정보 // 유저 이메일이 존재하고, 비밀번호가 일치할때
  # @return nil   위 두 조건 중 하나라도 안될 때,
  def self.login_available(email, pw)
    user = User.find_by(email: email.to_s)
    user if !user.nil? && user.authenticate(pw)
  end


end
