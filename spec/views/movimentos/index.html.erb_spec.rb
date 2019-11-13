require 'rails_helper'

RSpec.describe "movimentos/index", type: :view do
  before(:each) do
    assign(:movimentos, [
      Movimento.create!(
        :quantidade => 2.5,
        :pessoa => nil,
        :operacao => nil,
        :produto => nil
      ),
      Movimento.create!(
        :quantidade => 2.5,
        :pessoa => nil,
        :operacao => nil,
        :produto => nil
      )
    ])
  end

  it "renders a list of movimentos" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
