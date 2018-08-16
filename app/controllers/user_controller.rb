class UserController < ApplicationController
  def login
  end

  def edit
  end

  def mypage
  end

  def join
    @token = form_authenticity_token
  end

  def join_two
  end
end
