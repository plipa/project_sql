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

            redirect_to :action=>'index'
        else

    redirect_to :action=>'new'
    end
  end


end
