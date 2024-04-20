require 'rails_helper'

RSpec.describe "vendors/new", type: :view do
  before(:each) do
    assign(:vendor, Vendor.new(
      name: "MyString",
      runs_count: 1
    ))
  end

  it "renders new vendor form" do
    render

    assert_select "form[action=?][method=?]", vendors_path, "post" do

      assert_select "input[name=?]", "vendor[name]"

      assert_select "input[name=?]", "vendor[runs_count]"
    end
  end
end
