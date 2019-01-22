class HomeController < ApplicationController
   skip_before_action :require_login
  def index
  	@tours = Tour.all
  	@locals = Local.all
  	@news = News.all
  	@p = Tour.find_by_id(params[:id])
  end
end
