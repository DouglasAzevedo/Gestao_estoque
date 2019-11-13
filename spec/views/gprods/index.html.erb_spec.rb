require 'rails_helper'

RSpec.describe "gprods/index", type: :view do
  before(:each) do
    assign(:gprods, [
      Gprod.create!(
        :nome => "Nome"
      ),
      Gprod.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of gprods" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
