class Notice < ApplicationRecord
  belongs_to :user  #user와의 1:N관계
end
