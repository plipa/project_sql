class ProjectsController < ApplicationController

  def new
    @p = Project.new
  end

  def list
    @projects =Project.find_all_by_name :name
  end

  def create

  end

end
