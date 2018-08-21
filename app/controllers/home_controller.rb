class HomeController < ApplicationController
  def index
  end

  def search
    @searchi = params[:search_keyword]
  end
end
