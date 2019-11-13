require 'rails_helper'

RSpec.describe "enderecos/show", type: :view do
  before(:each) do
    @endereco = assign(:endereco, Endereco.create!(
      :rua => "Rua",
      :cep => "Cep",
      :numero => "Numero",
      :cidade => nil,
      :estado => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rua/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/Numero/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
