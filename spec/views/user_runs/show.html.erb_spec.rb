require 'rails_helper'

RSpec.describe "user_runs/show", type: :view do
  before(:each) do
    assign(:user_run, UserRun.create!(
      user_id: 2,
      run_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
