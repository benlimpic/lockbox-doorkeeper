require 'rails_helper'

RSpec.describe "keys/edit", type: :view do
  before(:each) do
    @key = assign(:key, Key.create!())
  end

  it "renders the edit key form" do
    render

    assert_select "form[action=?][method=?]", key_path(@key), "post" do
    end
  end
end
