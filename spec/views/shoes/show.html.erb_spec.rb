require 'rails_helper'

RSpec.describe "shoes/show", type: :view do
  before(:each) do
    assign(:shoe, Shoe.create!(
      size: "Size",
      brand: "Brand",
      model: "Model",
      mileage: "Mileage"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Mileage/)
  end
end
