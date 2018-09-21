require 'rails_helper'

RSpec.describe "original_questions/edit", type: :view do
  before(:each) do
    @original_question = assign(:original_question, OriginalQuestion.create!(
      :question_id => 1,
      :original_question => "MyString"
    ))
  end

  it "renders the edit original_question form" do
    render

    assert_select "form[action=?][method=?]", original_question_path(@original_question), "post" do

      assert_select "input[name=?]", "original_question[question_id]"

      assert_select "input[name=?]", "original_question[original_question]"
    end
  end
end
