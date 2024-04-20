require 'rails_helper'

RSpec.describe "waivers/index", type: :view do
  before(:each) do
    assign(:waivers, [
      Waiver.create!(
        user_id: 2,
        run_id: 3,
        name: "Name"
      ),
      Waiver.create!(
        user_id: 2,
        run_id: 3,
        name: "Name"
      )
    ])
  end

  it "renders a list of waivers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
