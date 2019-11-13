require 'rails_helper'

RSpec.describe "produtos/index", type: :view do
  before(:each) do
    assign(:produtos, [
      Produto.create!(
        :nome => "Nome",
        :unidade => nil,
        :gprod => nil
      ),
      Produto.create!(
        :nome => "Nome",
        :unidade => nil,
        :gprod => nil
      )
    ])
  end

  it "renders a list of produtos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
