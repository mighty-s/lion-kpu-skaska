class CommentRecipe < ApplicationRecord
  belongs_to :recipe  #recipe와의 1:N관계
  belongs_to :user    #user와의 1:N관계
end
