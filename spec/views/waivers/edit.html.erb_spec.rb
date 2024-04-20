require 'rails_helper'

RSpec.describe "waivers/edit", type: :view do
  let(:waiver) {
    Waiver.create!(
      user_id: 1,
      run_id: 1,
      name: "MyString"
    )
  }

  before(:each) do
    assign(:waiver, waiver)
  end

  it "renders the edit waiver form" do
    render

    assert_select "form[action=?][method=?]", waiver_path(waiver), "post" do

      assert_select "input[name=?]", "waiver[user_id]"

      assert_select "input[name=?]", "waiver[run_id]"

      assert_select "input[name=?]", "waiver[name]"
    end
  end
end
