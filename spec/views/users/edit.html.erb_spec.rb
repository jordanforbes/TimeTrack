require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      fname: "MyString",
      lname: "MyString",
      email: "MyString",
      role: "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[fname]"

      assert_select "input[name=?]", "user[lname]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[role]"
    end
  end
end
