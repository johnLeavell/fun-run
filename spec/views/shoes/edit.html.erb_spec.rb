require 'rails_helper'

RSpec.describe "shoes/edit", type: :view do
  let(:shoe) {
    Shoe.create!(
      size: "MyString",
      brand: "MyString",
      model: "MyString",
      mileage: "MyString"
    )
  }

  before(:each) do
    assign(:shoe, shoe)
  end

  it "renders the edit shoe form" do
    render

    assert_select "form[action=?][method=?]", shoe_path(shoe), "post" do

      assert_select "input[name=?]", "shoe[size]"

      assert_select "input[name=?]", "shoe[brand]"

      assert_select "input[name=?]", "shoe[model]"

      assert_select "input[name=?]", "shoe[mileage]"
    end
  end
end
