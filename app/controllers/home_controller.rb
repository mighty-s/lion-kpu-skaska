class HomeController < ApplicationController

  def index

    # Inner Join을 통해서 유저의 별명, 첫번째 첨부 사진까지 같이 가져온다.
    #
    @notify = Notice.all
    @star = Recipe.all
    @top3 = Recipe.all.order(view: :desc).limit(3)
  end

  def search
    @searchi = params[:search_keyword]
    @resultByView = Recipe.where("hash_tag like ?","%#{@searchi}%").order(view: :desc).limit(6)
    @resultByTime = Recipe.where("hash_tag like ?","%#{@searchi}%").order(:updated_at).limit(6)
  end
end
