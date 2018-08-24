class Recipe < ApplicationRecord
  # 외래키 관계
  belongs_to :user
  has_many :recipe_images
  has_many :likes


  # create 메서드가 너무 길어져서 이걸로 뺏음
  #
  #
  def self.image_create(model, params)
    RecipeImage.creates(params, model) unless model.nil?
  end
end
