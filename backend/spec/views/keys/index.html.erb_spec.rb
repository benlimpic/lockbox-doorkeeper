require 'rails_helper'

RSpec.describe "keys/index", type: :view do
  before(:each) do
    assign(:keys, [
      Key.create!(),
      Key.create!()
    ])
  end

  it "renders a list of keys" do
    render
  end
end
