class ProjectsController < ApplicationController

  def new
    @p = Project.new
  end

  def list
    @projects =Project.find_all_by_name :name
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

end
