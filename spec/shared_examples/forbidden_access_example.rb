shared_examples "forbidden access" do
  it "returns error messages" do 
    expect(body_json['errors']['message']).to eq "Forbidden access"
  end

  it "returns fobidden status" do 
    expect(response).to have_http_status(:forbidden)
  end
end