require 'rails_helper'

RSpec.describe "original_questions/index", type: :view do
  before(:each) do
    assign(:original_questions, [
      OriginalQuestion.create!(
        :question_id => 2,
        :original_question => "Original Question"
      ),
      OriginalQuestion.create!(
        :question_id => 2,
        :original_question => "Original Question"
      )
    ])
  end

  it "renders a list of original_questions" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Original Question".to_s, :count => 2
  end
end
