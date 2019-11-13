require "rails_helper"

RSpec.describe MovimentosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/movimentos").to route_to("movimentos#index")
    end

    it "routes to #new" do
      expect(:get => "/movimentos/new").to route_to("movimentos#new")
    end

    it "routes to #show" do
      expect(:get => "/movimentos/1").to route_to("movimentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/movimentos/1/edit").to route_to("movimentos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/movimentos").to route_to("movimentos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/movimentos/1").to route_to("movimentos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/movimentos/1").to route_to("movimentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/movimentos/1").to route_to("movimentos#destroy", :id => "1")
    end
  end
end
