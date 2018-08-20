#
# 유저의 세션 관련한 모듈
#
module SessionUsersHelper
  # 유저를 로그인 시키는 함수
  # 세션에 유저를 등록
  #
  # @param  user  유저모델, 반드시 User.find_by 등으로 모델을 서치해서 가져와야함
  #
  def log_in(user)
    puts user
    session[:user] = user
  end

  # 유저를 로그아웃 시키는 함수
  # 세션에서 해당 값 제거
  #
  def log_out
    session.delete(:user)
    @current_user = nil
  end

  # 유저가 로그인 되어있는지 체크하는 함수
  #
  # @return true -> 로그인 되어있음
  # @return false -> 로그인 안되있음
  #
  def user_loged_in?
    !session[:user].nil?
  end
end