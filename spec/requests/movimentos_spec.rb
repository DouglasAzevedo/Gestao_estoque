require 'rails_helper'

RSpec.describe "Movimentos", type: :request do
  describe "GET /movimentos" do
    it "works! (now write some real specs)" do
      get movimentos_path
      expect(response).to have_http_status(200)
    end
  end
end
