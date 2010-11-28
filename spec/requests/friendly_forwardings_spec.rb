require 'spec_helper'

describe "FriendlyForwardings" do
  
  it "should forward a user to the requested page after sign in" do
    user = Factory(:user)
    visit edit_user_path(user)
    # test auto follows redirect to signin page
    fill_in :email, :with => user.email
    fill_in :password, :with => user.password
    click_button
    #test follows redirect again, this time to users/edits
    response.should render_template('users/edit')
  end
end
