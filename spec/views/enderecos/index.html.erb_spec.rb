require 'rails_helper'

RSpec.describe "enderecos/index", type: :view do
  before(:each) do
    assign(:enderecos, [
      Endereco.create!(
        :rua => "Rua",
        :cep => "Cep",
        :numero => "Numero",
        :cidade => nil,
        :estado => nil
      ),
      Endereco.create!(
        :rua => "Rua",
        :cep => "Cep",
        :numero => "Numero",
        :cidade => nil,
        :estado => nil
      )
    ])
  end

  it "renders a list of enderecos" do
    render
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
