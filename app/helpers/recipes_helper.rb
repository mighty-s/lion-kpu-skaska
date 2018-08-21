# @author sight
# @date   2018.08.22
#
# 레시피 관련 헬퍼
#
module RecipesHelper

  # 해시태그 문자열 사이의 모든 공백을 제거한다.
  # db에서 꺼내올때는 문자열을 split으로 나눠서 가져와야함
  #
  # @param  hash 넘어온 해시태그값
  # @return whitespace가 모두 제거된 문자열
  def parse_in_hash(hash)
    hash.to_s.gsub(/\s+/, '')
  end
end
