class ProjectsController < ApplicationController

  def new

  end

  def list
    @projects =Projects.find_all_by_name :name
  end

end
