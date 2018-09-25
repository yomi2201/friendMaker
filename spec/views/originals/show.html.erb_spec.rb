require 'rails_helper'

RSpec.describe "originals/show", type: :view do
  before(:each) do
    @original = assign(:original, Original.create!(
      :question_id => 2,
      :question => "Question"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Question/)
  end
end
