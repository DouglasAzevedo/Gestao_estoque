require 'rails_helper'

RSpec.describe "movimentos/edit", type: :view do
  before(:each) do
    @movimento = assign(:movimento, Movimento.create!(
      :quantidade => 1.5,
      :pessoa => nil,
      :operacao => nil,
      :produto => nil
    ))
  end

  it "renders the edit movimento form" do
    render

    assert_select "form[action=?][method=?]", movimento_path(@movimento), "post" do

      assert_select "input[name=?]", "movimento[quantidade]"

      assert_select "input[name=?]", "movimento[pessoa_id]"

      assert_select "input[name=?]", "movimento[operacao_id]"

      assert_select "input[name=?]", "movimento[produto_id]"
    end
  end
end
