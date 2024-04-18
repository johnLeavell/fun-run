require 'rails_helper'

RSpec.describe "runs/show", type: :view do
  before(:each) do
    assign(:run, Run.create!(
      distance: "Distance",
      name: "Name",
      vendor_id: 2,
      user_id: 3,
      route: "Route",
      waivers_count: 4,
      user_runs_count: 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Distance/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Route/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
