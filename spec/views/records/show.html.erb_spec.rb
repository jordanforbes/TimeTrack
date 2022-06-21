require 'rails_helper'

RSpec.describe "records/show", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      note: "Note"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Note/)
  end
end
