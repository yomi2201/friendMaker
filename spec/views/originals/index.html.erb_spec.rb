require 'rails_helper'

RSpec.describe "originals/index", type: :view do
  before(:each) do
    assign(:originals, [
      Original.create!(
        :question_id => 2,
        :question => "Question"
      ),
      Original.create!(
        :question_id => 2,
        :question => "Question"
      )
    ])
  end

  it "renders a list of originals" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Question".to_s, :count => 2
  end
end
