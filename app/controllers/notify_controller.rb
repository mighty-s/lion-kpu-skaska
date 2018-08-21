class NotifyController < ApplicationController
  def index
  end

  def create
    @token = form_authenticity_token
  end

  def new
    if user_admin?
    noti = Notice.create(
      user_id: session[:user]['id'],
      title: params[:notify_title],
      content: params[:notify_content]
    )
    redirect_to "/notice/#{noti.id}"
  else
    redirect_to '/notice'
    end
  end


  def show
    
  end
end
