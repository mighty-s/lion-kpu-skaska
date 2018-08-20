#
# 해당 어플리케이션의 모든 컨트로러를 총괄하는 컨트롤러
# 모든 컨트롤러는 유저의 session 관련한 모듈을 가지고 있다.
#
class ApplicationController < ActionController::Base
  include SessionUsersHelper

  protect_from_forgery with: :exception
end
