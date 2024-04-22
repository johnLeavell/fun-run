require 'rails_helper'

RSpec.describe "likes/edit", type: :view do
  let(:like) {
    Like.create!(
      fan: nil,
      shoe: nil
    )
  }

  before(:each) do
    assign(:like, like)
  end

  it "renders the edit like form" do
    render

    assert_select "form[action=?][method=?]", like_path(like), "post" do

      assert_select "input[name=?]", "like[fan_id]"

      assert_select "input[name=?]", "like[shoe_id]"
    end
  end
end
