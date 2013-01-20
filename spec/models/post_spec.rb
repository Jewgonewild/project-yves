require 'spec_helper'

describe Post do

  before(:all) do
    @user = FactoryGirl.build(:user)
  end

  context "post" do

    it "should create a new instance given a valide attribute" do
      post = FactoryGirl.create(:post, :title => "My Title")

      p1 = Post.first

      p1.title.should == "My Title"
    end

    it "should have a user" do
      FactoryGirl.build(:post, :user => @user).should be_valid
      FactoryGirl.build(:post, :user => nil).should_not be_valid
    end

    it "should have a title" do
      FactoryGirl.build(:post, :user => @user, :title => "This is a title").should be_valid
      FactoryGirl.build(:post, :user => @user, :title => nil).should_not be_valid
    end

  end

end
