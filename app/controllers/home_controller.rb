class HomeController < ApplicationController
  def index
    @projects = Project.order('started_at DESC')
  end
  def feed
    @projects = Project.where("finished_at IS NOT NULL").order('finished_at DESC')
    respond_to do |format|
      format.rss { render :layout => false }
    end
  end
end
