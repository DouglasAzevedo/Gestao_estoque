require 'rails_helper'

RSpec.describe "operacaos/edit", type: :view do
  before(:each) do
    @operacao = assign(:operacao, Operacao.create!(
      :descricao => "MyString",
      :tipo => "MyString"
    ))
  end

  it "renders the edit operacao form" do
    render

    assert_select "form[action=?][method=?]", operacao_path(@operacao), "post" do

      assert_select "input[name=?]", "operacao[descricao]"

      assert_select "input[name=?]", "operacao[tipo]"
    end
  end
end
