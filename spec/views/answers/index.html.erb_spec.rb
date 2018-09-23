require 'rails_helper'

RSpec.describe "answers/index", type: :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :question_id => 2,
        :answer => "Answer",
        :delete_flag => false
      ),
      Answer.create!(
        :question_id => 2,
        :answer => "Answer",
        :delete_flag => false
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Answer".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
