class HomeController < ApplicationController
  def index
  	@artlicles = Article.all.order("created_at DESC")
  end
end
