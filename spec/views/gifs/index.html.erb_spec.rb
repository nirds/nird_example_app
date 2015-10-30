require 'rails_helper'

RSpec.describe "gifs/index", type: :view do
  before(:each) do
    assign(:gifs, [
      Gif.create!(
        :user => 1,
        :feeling => "Feeling",
        :gif_id => 2
      ),
      Gif.create!(
        :user => 1,
        :feeling => "Feeling",
        :gif_id => 2
      )
    ])
  end

  it "renders a list of gifs" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Feeling".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
