require 'rails_helper'

RSpec.describe "vendors/edit", type: :view do
  let(:vendor) {
    Vendor.create!(
      name: "MyString",
      runs_count: 1
    )
  }

  before(:each) do
    assign(:vendor, vendor)
  end

  it "renders the edit vendor form" do
    render

    assert_select "form[action=?][method=?]", vendor_path(vendor), "post" do

      assert_select "input[name=?]", "vendor[name]"

      assert_select "input[name=?]", "vendor[runs_count]"
    end
  end
end
