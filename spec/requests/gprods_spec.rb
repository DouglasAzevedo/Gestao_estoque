require 'rails_helper'

RSpec.describe "Gprods", type: :request do
  describe "GET /gprods" do
    it "works! (now write some real specs)" do
      get gprods_path
      expect(response).to have_http_status(200)
    end
  end
end
