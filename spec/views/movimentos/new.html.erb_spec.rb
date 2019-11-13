require 'rails_helper'

RSpec.describe "movimentos/new", type: :view do
  before(:each) do
    assign(:movimento, Movimento.new(
      :quantidade => 1.5,
      :pessoa => nil,
      :operacao => nil,
      :produto => nil
    ))
  end

  it "renders new movimento form" do
    render

    assert_select "form[action=?][method=?]", movimentos_path, "post" do

      assert_select "input[name=?]", "movimento[quantidade]"

      assert_select "input[name=?]", "movimento[pessoa_id]"

      assert_select "input[name=?]", "movimento[operacao_id]"

      assert_select "input[name=?]", "movimento[produto_id]"
    end
  end
end
