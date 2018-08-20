#
# 유저와 관련된 session들을 관리하는 컨트롤러
# 자세한 로직은 SessionUsersHelper.rb에 정의됨 --> ApplicationController에서 전역으로 include함
#
class SessionUsersController < ApplicationController
  # 유저가 로그인 시도시, 로그인 가능하면 값 할당,
  # 불가능할 경우 로그인 창으로 되돌려 보낸다
  #
  # (view 파일 없음)
  def create
    user = User.login_available(params[:email], params[:pw])

    if user.nil?
      redirect_to '/user/login' # 로그인 실패시 (메세지 추가 예정)
    else
      log_in(user)
      redirect_to '/' # 로그인 성공시
    end
  end

  # 유저가 로그아웃을 할 경우
  # 세션에서 값을 제거하는 액션
  #
  def destroy
    log_out
    redirect_to '/'
  end
end
