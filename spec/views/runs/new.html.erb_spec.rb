require 'rails_helper'

RSpec.describe "runs/new", type: :view do
  before(:each) do
    assign(:run, Run.new(
      distance: "MyString",
      name: "MyString",
      vendor_id: 1,
      user_id: 1,
      route: "MyString",
      waivers_count: 1,
      user_runs_count: 1
    ))
  end

  it "renders new run form" do
    render

    assert_select "form[action=?][method=?]", runs_path, "post" do

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
