require 'rails_helper'

RSpec.describe "unidades/edit", type: :view do
  before(:each) do
    @unidade = assign(:unidade, Unidade.create!(
      :descricao => "MyString",
      :sigla => "MyString"
    ))
  end

  it "renders the edit unidade form" do
    render

    assert_select "form[action=?][method=?]", unidade_path(@unidade), "post" do

      assert_select "input[name=?]", "unidade[descricao]"

      assert_select "input[name=?]", "unidade[sigla]"
    end
  end
end
