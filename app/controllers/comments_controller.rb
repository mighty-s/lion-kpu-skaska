class CommentsController < ApplicationController
  def create
    if user_loged_in?
      commenti = CommentNotice.create(
        notice_id: params[:notice_id],
        user_id: session[:user]['id'],
        content: params[:comment_content]
      )
      redirect_to "/notice/#{commenti.notice_id}"
    else
      redirect_to "/notice"
    end
  end

  def destroy
  end
end
