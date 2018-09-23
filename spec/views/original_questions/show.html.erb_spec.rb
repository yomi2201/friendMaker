require 'rails_helper'

RSpec.describe "original_questions/show", type: :view do
  before(:each) do
    @original_question = assign(:original_question, OriginalQuestion.create!(
      :question_id => 2,
      :original_question => "Original Question"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Original Question/)
  end
end
