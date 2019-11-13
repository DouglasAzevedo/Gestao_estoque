require 'rails_helper'

RSpec.describe "gprods/new", type: :view do
  before(:each) do
    assign(:gprod, Gprod.new(
      :nome => "MyString"
    ))
  end

  it "renders new gprod form" do
    render

    assert_select "form[action=?][method=?]", gprods_path, "post" do

      assert_select "input[name=?]", "gprod[nome]"
    end
  end
end
