require 'spec_helper'

describe User do
  
  before(:each) do
    @attr = { :name => "Example User", :email => "user@example.com" }
  end
  
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end
  
  it "should require a name" do
    no_name_user = User.new(@attr.merge(:name=> ""))
    no_name_user.should_not be_valid
  end
    
  it "should require an email address" do
    no_email = User.new(@attr.merge(:email=>""))
    no_email.should_not be_valid
  end
  
  it "should reject names that are too long" do
    long_name = "A" * 51
    long_name_user = User.new(@attr.merge(:name=>long_name))
    long_name_user.should_not be_valid
  end
  
  it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      valid_email_user.should be_valid
    end
  end

  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email=>address))
      invalid_email_user.should_not be_valid
    end
  end
  
  it "should reject dupe emails" do
    normalized_addr = @attr[:email].upcase
    User.create!(@attr.merge(:email=>normalized_addr))
    user_dupe_email = User.new(@attr)
    user_dupe_email.should_not be_valid
  end
  
end