require 'rails_helper'

RSpec.describe "operacaos/index", type: :view do
  before(:each) do
    assign(:operacaos, [
      Operacao.create!(
        :descricao => "Descricao",
        :tipo => "Tipo"
      ),
      Operacao.create!(
        :descricao => "Descricao",
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of operacaos" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
