require 'rails_helper'

RSpec.describe "Server Time", type: :request do
  it "returns the current server time" do
    get "/api/server_time"
    expect(response).to have_http_status(200)
  end
end