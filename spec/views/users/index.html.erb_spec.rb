require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        fname: "Fname",
        lname: "Lname",
        email: "Email",
        role: "Role"
      ),
      User.create!(
        fname: "Fname",
        lname: "Lname",
        email: "Email",
        role: "Role"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Fname".to_s, count: 2
    assert_select "tr>td", text: "Lname".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Role".to_s, count: 2
  end
end
