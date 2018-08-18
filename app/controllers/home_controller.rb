class HomeController < ApplicationController
  def index
    @notices = Notice.limit(3)
  end
end
