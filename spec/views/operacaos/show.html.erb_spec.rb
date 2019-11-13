require 'rails_helper'

RSpec.describe "operacaos/show", type: :view do
  before(:each) do
    @operacao = assign(:operacao, Operacao.create!(
      :descricao => "Descricao",
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/Tipo/)
  end
end
