require 'spec_helper'

describe ProjectsController do

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

end

describe Projects do
  before(:each) do
    @test = {:name=>"Test title", :description => "Test description"}
  end

  it "it should create new instance" do
    Projects.create!(@test)
  end
end
