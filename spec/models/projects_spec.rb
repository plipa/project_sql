require 'spec_helper'

describe Projects do
  pending "add some examples to (or delete) #{__FILE__}"

   before(:each) do
    @test = {:name=>"Test title", :description => "Test description"}
  end

  it "it should create new instance" do
    Projects.create!(@test)
  end

end
