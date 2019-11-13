require 'rails_helper'

RSpec.describe "operacaos/new", type: :view do
  before(:each) do
    assign(:operacao, Operacao.new(
      :descricao => "MyString",
      :tipo => "MyString"
    ))
  end

  it "renders new operacao form" do
    render

    assert_select "form[action=?][method=?]", operacaos_path, "post" do

      assert_select "input[name=?]", "operacao[descricao]"

      assert_select "input[name=?]", "operacao[tipo]"
    end
  end
end
