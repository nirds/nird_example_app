require 'rails_helper'

RSpec.describe "gifs/new", type: :view do
  before(:each) do
    assign(:gif, Gif.new(
      :user => 1,
      :feeling => "MyString",
      :gif_id => 1
    ))
  end

  it "renders new gif form" do
    render

    assert_select "form[action=?][method=?]", gifs_path, "post" do

      assert_select "input#gif_user[name=?]", "gif[user]"

      assert_select "input#gif_feeling[name=?]", "gif[feeling]"

      assert_select "input#gif_gif_id[name=?]", "gif[gif_id]"
    end
  end
end
