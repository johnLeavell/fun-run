require 'rails_helper'

RSpec.describe "user_runs/edit", type: :view do
  let(:user_run) {
    UserRun.create!(
      user_id: 1,
      run_id: 1
    )
  }

  before(:each) do
    assign(:user_run, user_run)
  end

  it "renders the edit user_run form" do
    render

    assert_select "form[action=?][method=?]", user_run_path(user_run), "post" do

      assert_select "input[name=?]", "user_run[user_id]"

      assert_select "input[name=?]", "user_run[run_id]"
    end
  end
end
