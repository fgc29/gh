require 'spec_helper.rb'

describe CandidatesController, :type => :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET new" do
    it "has a 200 status code" do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe "POST create" do
    it "has a 200 status code" do
      post :create
      expect(response.status).to eq(200)
    end

    it "should route to create action" do
      expect(:post => "/candidates").to route_to(:controller => "candidates", :action => "create")
    end
  end
end
