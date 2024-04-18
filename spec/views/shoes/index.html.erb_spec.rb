require 'rails_helper'

RSpec.describe "shoes/index", type: :view do
  before(:each) do
    assign(:shoes, [
      Shoe.create!(
        size: "Size",
        brand: "Brand",
        model: "Model",
        mileage: "Mileage"
      ),
      Shoe.create!(
        size: "Size",
        brand: "Brand",
        model: "Model",
        mileage: "Mileage"
      )
    ])
  end

  it "renders a list of shoes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Size".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Brand".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Model".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Mileage".to_s), count: 2
  end
end
