require 'rails_helper'

RSpec.describe "likes/index", type: :view do
  before(:each) do
    assign(:likes, [
      Like.create!(
        fan: nil,
        shoe: nil
      ),
      Like.create!(
        fan: nil,
        shoe: nil
      )
    ])
  end

  it "renders a list of likes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
