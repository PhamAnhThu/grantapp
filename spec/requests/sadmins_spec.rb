require 'rails_helper'

RSpec.describe "Sadmins", type: :request do
  describe "GET /sadmins" do
    it "works! (now write some real specs)" do
      get sadmins_path
      expect(response).to have_http_status(200)
    end
  end
end
