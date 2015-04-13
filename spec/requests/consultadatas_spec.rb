require 'rails_helper'

RSpec.describe "Consultadatas", :type => :request do
  describe "GET /consultadatas" do
    it "works! (now write some real specs)" do
      get consultadatas_path
      expect(response).to have_http_status(200)
    end
  end
end
