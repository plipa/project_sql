require 'spec_helper'

describe Project do
  pending "add some examples to (or delete) #{__FILE__}"

   before(:each) do
    @test = {:name=>"Test title", :description => "Test description"}
  end

  it "should create new instance" do
    Project.create!(@test)
  end

  it  "should require a name" do
    no_name_project = Project.new(@test.merge(:name=>""))
    no_name_project.should_not be_valid
  end

  it "should require name <255 chars" do
    @long = "a"*256
    long_name = Project.new(@test.merge(:name=>@long))
    long_name.should_not be_valid
  end

end
