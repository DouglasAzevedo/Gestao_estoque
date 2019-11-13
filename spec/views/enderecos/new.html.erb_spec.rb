require 'rails_helper'

RSpec.describe "enderecos/new", type: :view do
  before(:each) do
    assign(:endereco, Endereco.new(
      :rua => "MyString",
      :cep => "MyString",
      :numero => "MyString",
      :cidade => nil,
      :estado => nil
    ))
  end

  it "renders new endereco form" do
    render

    assert_select "form[action=?][method=?]", enderecos_path, "post" do

      assert_select "input[name=?]", "endereco[rua]"

      assert_select "input[name=?]", "endereco[cep]"

      assert_select "input[name=?]", "endereco[numero]"

      assert_select "input[name=?]", "endereco[cidade_id]"

      assert_select "input[name=?]", "endereco[estado_id]"
    end
  end
end
