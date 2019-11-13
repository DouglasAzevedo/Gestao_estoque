require 'rails_helper'

RSpec.describe "Operacaos", type: :request do
  describe "GET /operacaos" do
    it "works! (now write some real specs)" do
      get operacaos_path
      expect(response).to have_http_status(200)
    end
  end
end
