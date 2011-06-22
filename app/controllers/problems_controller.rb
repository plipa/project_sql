class ProblemsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    #@problem = Problem.find_all_by_project_id(params[:project_id])
     @problem = Problem.find(:all, :conditions => {:project_id => params[:project_id], :problem_id=>nil})
end

  def show
    @problem = Problem.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @problem = @project.problem.new
  end

   def create
    @problem = Problem.new(params[:problem])
    @problem.project_id = params[:project_id]
      @problem
      if @problem.save

            redirect_to :action=>'index'
        else

    redirect_to :action=>'new'
    end
  end

end
