require 'rails_helper'

RSpec.describe "gprods/show", type: :view do
  before(:each) do
    @gprod = assign(:gprod, Gprod.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
