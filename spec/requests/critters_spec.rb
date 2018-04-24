require 'rails_helper'

RSpec.describe "Critters", type: :request do
  describe "GET /critters" do
    it "works! (now write some real specs)" do
      get critters_path
      expect(response).to have_http_status(200)
    end
  end
end
