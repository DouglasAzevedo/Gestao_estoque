require 'rails_helper'

RSpec.describe "pessoas/show", type: :view do
  before(:each) do
    @pessoa = assign(:pessoa, Pessoa.create!(
      :nome => "Nome",
      :documento => "Documento",
      :endereco => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Documento/)
    expect(rendered).to match(//)
  end
end
