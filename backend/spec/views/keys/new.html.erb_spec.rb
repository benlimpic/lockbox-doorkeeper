require 'rails_helper'

RSpec.describe "keys/new", type: :view do
  before(:each) do
    assign(:key, Key.new())
  end

  it "renders new key form" do
    render

    assert_select "form[action=?][method=?]", keys_path, "post" do
    end
  end
end
