require 'rails_helper'

RSpec.describe "likes/new", type: :view do
  before(:each) do
    assign(:like, Like.new(
      fan: nil,
      shoe: nil
    ))
  end

  it "renders new like form" do
    render

    assert_select "form[action=?][method=?]", likes_path, "post" do

      assert_select "input[name=?]", "like[fan_id]"

      assert_select "input[name=?]", "like[shoe_id]"
    end
  end
end
