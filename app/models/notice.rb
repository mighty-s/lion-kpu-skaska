class Notice < ApplicationRecord
  belongs_to :user  #user와의 1:N관계
  has_many :comment_notices #1개의 공지는 여러개의 공지사항 코멘트를 받을 수 있다.
end
