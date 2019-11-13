require 'rails_helper'

RSpec.describe "movimentos/show", type: :view do
  before(:each) do
    @movimento = assign(:movimento, Movimento.create!(
      :quantidade => 2.5,
      :pessoa => nil,
      :operacao => nil,
      :produto => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
