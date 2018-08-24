class HomeController < ApplicationController

  def index

    # Inner Join을 통해서 유저의 별명, 첫번째 첨부 사진까지 같이 가져온다.
    #
    # 3중 inner join --> (Recipe, User, RecipeImage)
    @r_list = Recipe.select('recipes.*, recipe_images.id , users.nickname').joins(:recipe_images, :user).group("recipes.id")
  end

  def search
    @searchi = params[:search_keyword]
  end
end
