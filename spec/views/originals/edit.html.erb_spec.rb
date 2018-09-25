require 'rails_helper'

RSpec.describe "originals/edit", type: :view do
  before(:each) do
    @original = assign(:original, Original.create!(
      :question_id => 1,
      :question => "MyString"
    ))
  end

  it "renders the edit original form" do
    render

    assert_select "form[action=?][method=?]", original_path(@original), "post" do

      assert_select "input[name=?]", "original[question_id]"

      assert_select "input[name=?]", "original[question]"
    end
  end
end
