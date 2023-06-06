require 'rails_helper'

RSpec.describe "Admin V1 User as :unauthenticated", type: :request do

  context "GET /users" do 
    let!(:users) { create_list(:user, 5) }
    let(:url) { "/admin/v1/users" }

    before(:each) {get url }

    include_examples "unauthenticated access"
  end

  context "POST /admin/v1/users" do 
    let(:url) { "/admin/v1/users" }

    before(:each) { post url }

    include_examples "unauthenticated access"
  end

  context "PATCH /admin/v1/users/:id" do 
    let!(:user) { create(:user) }
    let(:url) { "/admin/v1/users/#{user.id}" }

    before(:each) { patch url }

    include_examples "unauthenticated access"
  end

  context "DELETE /admin/v1/users/:id" do 
    let!(:user) { create(:user) }
    let(:url) { "/admin/v1/users/#{user.id}" }

    before(:each) { delete url }

    include_examples "unauthenticated access"
  end
end
