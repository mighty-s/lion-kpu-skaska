class NotifyController < ApplicationController
  def index
  end

  def create
    @token = form_authenticity_token

    puts params

  end

  def show
  end
end
