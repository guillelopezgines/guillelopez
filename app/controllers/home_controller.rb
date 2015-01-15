class HomeController < ApplicationController
  def index
    @projects = Project.order("started_at desc")
  end
end
