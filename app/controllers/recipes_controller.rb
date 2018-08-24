class RecipesController < ApplicationController
  include RecipesHelper

  def index
  end

  def show
    @index = 0
    @reci = Recipe.find params[:id]
    @rec_image = RecipeImage.where(recipe_id: params[:id])
    @reci_user = @reci.user.nickname
    @recipic = @reci.recipe_images
    @reci_p = @reci.content
    @recipic_count = @reci.recipe_images.count
    @reci_split = @reci_p.split("\r\n")
    view_increase(@reci)
    end

  def new; end # 레시피 작성 페이지

  def create
    if user_loged_in?
      recipe = Recipe.create(
        title: params[:title],
        content: params[:content],
        hash_tag: parse_in_hash(params[:hash_tag]),
        user_id: session[:user]['id']
      )
      Recipe.image_create(recipe, params) unless recipe.nil?
      redirect_to "/recipes/#{recipe.id}"
    else
      redirect_to 'home/index'
    end

  end

  def edit; end

  def update; end
end
