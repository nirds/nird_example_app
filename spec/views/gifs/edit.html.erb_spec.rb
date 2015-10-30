require 'rails_helper'

RSpec.describe "gifs/edit", type: :view do
  before(:each) do
    @gif = assign(:gif, Gif.create!(
      :user => 1,
      :feeling => "MyString",
      :gif_id => 1
    ))
  end

  it "renders the edit gif form" do
    render

    assert_select "form[action=?][method=?]", gif_path(@gif), "post" do

      assert_select "input#gif_user[name=?]", "gif[user]"

      assert_select "input#gif_feeling[name=?]", "gif[feeling]"

      assert_select "input#gif_gif_id[name=?]", "gif[gif_id]"
    end
  end
end
