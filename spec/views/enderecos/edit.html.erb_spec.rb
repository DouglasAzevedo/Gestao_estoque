require 'rails_helper'

RSpec.describe "enderecos/edit", type: :view do
  before(:each) do
    @endereco = assign(:endereco, Endereco.create!(
      :rua => "MyString",
      :cep => "MyString",
      :numero => "MyString",
      :cidade => nil,
      :estado => nil
    ))
  end

  it "renders the edit endereco form" do
    render

    assert_select "form[action=?][method=?]", endereco_path(@endereco), "post" do

      assert_select "input[name=?]", "endereco[rua]"

      assert_select "input[name=?]", "endereco[cep]"

      assert_select "input[name=?]", "endereco[numero]"

      assert_select "input[name=?]", "endereco[cidade_id]"

      assert_select "input[name=?]", "endereco[estado_id]"
    end
  end
end
