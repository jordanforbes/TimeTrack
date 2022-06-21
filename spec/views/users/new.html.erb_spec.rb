require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      fname: "MyString",
      lname: "MyString",
      email: "MyString",
      role: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[fname]"

      assert_select "input[name=?]", "user[lname]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[role]"
    end
  end
end
