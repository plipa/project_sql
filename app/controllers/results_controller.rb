class ResultsController < ApplicationController
  def new
    @problem = Problem.find(params[:problem_id])
    @result = Result.new
  end

  def create
    @result = Result.new(params[:result])
    @result.problem_id = params[:problem_id]
    @problem = Problem.find(params[:problem_id])
     if @result.save
        redirect_to :controller => 'results', :action=>'index',:problem_id=>@problem.id
     else

    redirect_to :action=>'new'
    end
  end

  def index
     @project = Project.find(params[:project_id])
    @problem = Problem.find(params[:problem_id])
    @result = Result.find_all_by_problem_id(params[:problem_id])
  end
  def destroy
           Result.find(params[:id]).destroy
          redirect_to :action=>'index'
  end

end
