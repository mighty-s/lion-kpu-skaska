#
# 유저의 생성, 삭제등을 관리하는 컨트롤러
# 일부 로직은 UserHelper.rb에 위치
#
class UserController < ApplicationController
  include UserHelper

  def login
  end

  def edit
  end

  def mypage
  end

  def join
  end

  def join_two
    if pw_match?(params[:pw], params[:pw_re])
      @pre_value = params
    else
      # 비밀번호 에러시,
      # flash 메시지추가 예정
      redirect_to '/user/join'
    end
  end

  def create
    User.create(
      email: params[:email],
      password: params[:pw],
      nickname: params[:nickname],
      name: params[:name],
      phone: params[:phone],
      gender: params[:gender]
    )

    redirect_to action: 'join_complete', nickname: params[:nickname]
  end

  def join_complete
    @nickname = params[:nickname]
  end
end
