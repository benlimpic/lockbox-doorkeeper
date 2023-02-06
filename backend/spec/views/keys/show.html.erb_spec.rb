require 'rails_helper'

RSpec.describe "keys/show", type: :view do
  before(:each) do
    @key = assign(:key, Key.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
