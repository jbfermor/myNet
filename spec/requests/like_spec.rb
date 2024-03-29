require 'rails_helper'

RSpec.describe "Likes", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/like/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/like/delete"
      expect(response).to have_http_status(:success)
    end
  end

end
