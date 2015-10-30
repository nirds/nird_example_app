require 'rails_helper'

RSpec.describe "gifs/show", type: :view do
  before(:each) do
    @gif = assign(:gif, Gif.create!(
      :user => 1,
      :feeling => "Feeling",
      :gif_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Feeling/)
    expect(rendered).to match(/2/)
  end
end
