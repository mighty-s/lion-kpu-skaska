class Like < ApplicationRecord
  belongs_to :user  #유저와의 1:N관계
  belongs_to :recipe #레시피와의 1:N관계
end
