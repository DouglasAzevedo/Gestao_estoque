require 'rails_helper'

RSpec.describe "unidades/show", type: :view do
  before(:each) do
    @unidade = assign(:unidade, Unidade.create!(
      :descricao => "Descricao",
      :sigla => "Sigla"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/Sigla/)
  end
end
