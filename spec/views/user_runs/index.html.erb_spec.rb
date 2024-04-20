require 'rails_helper'

RSpec.describe "user_runs/index", type: :view do
  before(:each) do
    assign(:user_runs, [
      UserRun.create!(
        user_id: 2,
        run_id: 3
      ),
      UserRun.create!(
        user_id: 2,
        run_id: 3
      )
    ])
  end

  it "renders a list of user_runs" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
