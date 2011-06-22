class ProblemsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    #@problem = Problem.find_all_by_project_id(params[:project_id])
     @problem = Problem.find(:all, :conditions => {:project_id => params[:project_id], :problem_id=>nil})
  end

  def index_pod
       @problem = Problem.find(:all, :conditions => {:project_id => params[:project_id], :problem_id=>params[:problem_id]})
  end

  def show
    @problem = Problem.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @problem = @project.problem.new
  end

  def new_pod
    @project = Project.find(params[:project_id])
    @problem = Problem.find(params[:problem_id])
    @pod_problem = @project.problem.new
    @pod_problem.problem_id = @problem.id
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
