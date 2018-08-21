class RecipeImage < ApplicationRecord

  # 외래키 관계
  belongs_to :recipe, optional: true
  # 파일 업로드 설정
  mount_uploader :image, ImgUploader

  # 이미지들을 생성하는 메소드
  #
  def self.creates(params, recipe_id)
    params[:img].each do |path|
      unless path.nil?
        create!(
          image: params[:img][path],
          recipes_id: recipe_id
        )
      end
    end
  end
end
