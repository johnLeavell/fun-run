require 'rails_helper'

RSpec.describe "shoes/new", type: :view do
  before(:each) do
    assign(:shoe, Shoe.new(
      size: "MyString",
      brand: "MyString",
      model: "MyString",
      mileage: "MyString"
    ))
  end

  it "renders new shoe form" do
    render

    assert_select "form[action=?][method=?]", shoes_path, "post" do

      assert_select "input[name=?]", "shoe[size]"

      assert_select "input[name=?]", "shoe[brand]"

      assert_select "input[name=?]", "shoe[model]"

      assert_select "input[name=?]", "shoe[mileage]"
    end
  end
end
