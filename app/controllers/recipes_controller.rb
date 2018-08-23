class RecipesController < ApplicationController
  include RecipesHelper

  def index
  end

  def show; end

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
    end

    redirect_to '/'
  end

  def edit; end

  def update; end
end
