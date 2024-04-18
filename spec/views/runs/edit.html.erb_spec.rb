require 'rails_helper'

RSpec.describe "runs/edit", type: :view do
  let(:run) {
    Run.create!(
      distance: "MyString",
      name: "MyString",
      vendor_id: 1,
      user_id: 1,
      route: "MyString",
      waivers_count: 1,
      user_runs_count: 1
    )
  }

  before(:each) do
    assign(:run, run)
  end

  it "renders the edit run form" do
    render

    assert_select "form[action=?][method=?]", run_path(run), "post" do

      assert_select "input[name=?]", "run[distance]"

      assert_select "input[name=?]", "run[name]"

      assert_select "input[name=?]", "run[vendor_id]"

      assert_select "input[name=?]", "run[user_id]"

      assert_select "input[name=?]", "run[route]"

      assert_select "input[name=?]", "run[waivers_count]"

      assert_select "input[name=?]", "run[user_runs_count]"
    end
  end
end
