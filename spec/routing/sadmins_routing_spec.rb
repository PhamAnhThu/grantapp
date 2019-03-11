require "rails_helper"

RSpec.describe SadminsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sadmins").to route_to("sadmins#index")
    end

    it "routes to #new" do
      expect(:get => "/sadmins/new").to route_to("sadmins#new")
    end

    it "routes to #show" do
      expect(:get => "/sadmins/1").to route_to("sadmins#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sadmins/1/edit").to route_to("sadmins#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sadmins").to route_to("sadmins#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sadmins/1").to route_to("sadmins#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sadmins/1").to route_to("sadmins#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sadmins/1").to route_to("sadmins#destroy", :id => "1")
    end

  end
end
