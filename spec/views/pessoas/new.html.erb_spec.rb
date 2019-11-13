require 'rails_helper'

RSpec.describe "pessoas/new", type: :view do
  before(:each) do
    assign(:pessoa, Pessoa.new(
      :nome => "MyString",
      :documento => "MyString",
      :endereco => nil
    ))
  end

  it "renders new pessoa form" do
    render

    assert_select "form[action=?][method=?]", pessoas_path, "post" do

      assert_select "input[name=?]", "pessoa[nome]"

      assert_select "input[name=?]", "pessoa[documento]"

      assert_select "input[name=?]", "pessoa[endereco_id]"
    end
  end
end
