require 'rails_helper'

RSpec.describe "gprods/edit", type: :view do
  before(:each) do
    @gprod = assign(:gprod, Gprod.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit gprod form" do
    render

    assert_select "form[action=?][method=?]", gprod_path(@gprod), "post" do

      assert_select "input[name=?]", "gprod[nome]"
    end
  end
end
