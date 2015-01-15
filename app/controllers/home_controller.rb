class HomeController < ApplicationController
  def index
    @projects = Project.all
  end
  def feed
    @projects = Project.all
    respond_to do |format|
      format.rss { render :layout => false }
    end
  end
end
