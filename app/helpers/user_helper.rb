# @author sight
# @date   2018.08.19
#
# 유저와 관련된 함수들을 가지고 있는 module
# 다른 컨트롤러에도 include를 통해서
# 해당 모듈의 함수를 사용할 수 있음
#
module UserHelper

  # 비밀번호와 비밀번호 확인이
  # 서로 일치하는지 판별
  #
  # @param [Object] pw      비밀번호
  # @param [Object] pw_re   비밀번호 확인
  #
  # @return true  -> 일치
  # @return false -> 불일치
  def pw_match?(pw, pw_re)
    pw.to_s.strip == pw_re.to_s.strip
  end



end
