require 'rails_helper'

RSpec.describe "user_runs/new", type: :view do
  before(:each) do
    assign(:user_run, UserRun.new(
      user_id: 1,
      run_id: 1
    ))
  end

  it "renders new user_run form" do
    render

    assert_select "form[action=?][method=?]", user_runs_path, "post" do

      assert_select "input[name=?]", "user_run[user_id]"

      assert_select "input[name=?]", "user_run[run_id]"
    end
  end
end
