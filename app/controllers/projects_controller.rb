class ProjectsController < ApplicationController

  def new
    @p = Project.new
  end

  def index
    @projects =Project.all
  end

   def show
    @project = Project.find(params[:id])

  end

  def create
    @project = Project.new(params[:project])

      if @project.save

            redirect_to projects_path()
        else

    redirect_to :action=>'new'
    end
  end

  def destroy
           Project.find(params[:id]).destroy
          redirect_to :action=>'index'
  end

end
