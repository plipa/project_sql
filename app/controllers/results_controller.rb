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
         redirect_to :controller => 'problems', :action=>'index_pod',:problem_id=>@problem.id_problemu
     else

    redirect_to :action=>'new'
    end
  end

  def index

  end

end
