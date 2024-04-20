require 'rails_helper'

RSpec.describe "waivers/new", type: :view do
  before(:each) do
    assign(:waiver, Waiver.new(
      user_id: 1,
      run_id: 1,
      name: "MyString"
    ))
  end

  it "renders new waiver form" do
    render

    assert_select "form[action=?][method=?]", waivers_path, "post" do

      assert_select "input[name=?]", "waiver[user_id]"

      assert_select "input[name=?]", "waiver[run_id]"

      assert_select "input[name=?]", "waiver[name]"
    end
  end
end
