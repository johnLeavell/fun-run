require 'rails_helper'

RSpec.describe "vendors/show", type: :view do
  before(:each) do
    assign(:vendor, Vendor.create!(
      name: "Name",
      runs_count: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
