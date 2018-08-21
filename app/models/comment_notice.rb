class CommentNotice < ApplicationRecord
  belongs_to :notice  #notice와의 1:N관계
  belongs_to :user    #user와의 1:N관계
end
