class RecipeCommentsController < ApplicationController
  def create
    if user_loged_in?
      commenti = CommentRecipe.create(
          user_id: session[:user]['id'],
          recipe_id: params[:recipe_id],
          content: params[:comment_content]
      )
      redirect_to "/recipes/#{commenti.recipe_id}"
    else
      redirect_to "/recipes"
    end
    puts params
  end

  def destroy
  end
end
