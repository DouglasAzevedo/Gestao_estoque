require "rails_helper"

RSpec.describe GprodsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/gprods").to route_to("gprods#index")
    end

    it "routes to #new" do
      expect(:get => "/gprods/new").to route_to("gprods#new")
    end

    it "routes to #show" do
      expect(:get => "/gprods/1").to route_to("gprods#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gprods/1/edit").to route_to("gprods#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/gprods").to route_to("gprods#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gprods/1").to route_to("gprods#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gprods/1").to route_to("gprods#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gprods/1").to route_to("gprods#destroy", :id => "1")
    end
  end
end
