require 'spec_helper'

describe ProjectsController do

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end

    before(:each) do
      @test =  {:nazwa=>"test",:opis=>"aaaaaa"}
    end

    it "should create a project" do
        lambda do
          post :create, :user=>@test

        end.should change(Project, :count).by(1)
    end
  end

end

