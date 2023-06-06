require 'rails_helper'

RSpec.describe "Admin V1 User as :client", type: :request do
  let(:client) { create(:user, profile: :client) }

  context "GET /users" do 
    let!(:users) { create_list(:user, 5) }
    let(:url) { "/admin/v1/users" }

    before(:each) {get url, headers: auth_header(client) }

    include_examples "forbidden access"
  end

  context "POST /admin/v1/users" do 
    let(:url) { "/admin/v1/users" }

    before(:each) { post url, headers: auth_header(client) }

    include_examples "forbidden access"
  end

  context "PATCH /admin/v1/users/:id" do 
    let!(:user) { create(:user) }
    let(:url) { "/admin/v1/users/#{user.id}" }

    before(:each) { patch url, headers: auth_header(client) }

    include_examples "forbidden access"
  end

  context "DELETE /admin/v1/users/:id" do 
    let!(:user) { create(:user) }
    let(:url) { "/admin/v1/users/#{user.id}" }

    before(:each) { delete url, headers: auth_header(client) }

    include_examples "forbidden access"
  end
end
