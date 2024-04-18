require 'rails_helper'

RSpec.describe "runs/index", type: :view do
  before(:each) do
    assign(:runs, [
      Run.create!(
        distance: "Distance",
        name: "Name",
        vendor_id: 2,
        user_id: 3,
        route: "Route",
        waivers_count: 4,
        user_runs_count: 5
      ),
      Run.create!(
        distance: "Distance",
        name: "Name",
        vendor_id: 2,
        user_id: 3,
        route: "Route",
        waivers_count: 4,
        user_runs_count: 5
      )
    ])
  end

  it "renders a list of runs" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Distance".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Route".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
  end
end
