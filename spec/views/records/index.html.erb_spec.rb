require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        note: "Note"
      ),
      Record.create!(
        note: "Note"
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", text: "Note".to_s, count: 2
  end
end
