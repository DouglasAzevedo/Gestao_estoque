require "rails_helper"

RSpec.describe OperacaosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/operacaos").to route_to("operacaos#index")
    end

    it "routes to #new" do
      expect(:get => "/operacaos/new").to route_to("operacaos#new")
    end

    it "routes to #show" do
      expect(:get => "/operacaos/1").to route_to("operacaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/operacaos/1/edit").to route_to("operacaos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/operacaos").to route_to("operacaos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/operacaos/1").to route_to("operacaos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/operacaos/1").to route_to("operacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/operacaos/1").to route_to("operacaos#destroy", :id => "1")
    end
  end
end
