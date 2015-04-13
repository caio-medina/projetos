require "rails_helper"

RSpec.describe ConsultasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/consultas").to route_to("consultas#index")
    end

    it "routes to #new" do
      expect(:get => "/consultas/new").to route_to("consultas#new")
    end

    it "routes to #show" do
      expect(:get => "/consultas/1").to route_to("consultas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/consultas/1/edit").to route_to("consultas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/consultas").to route_to("consultas#create")
    end

    it "routes to #update" do
      expect(:put => "/consultas/1").to route_to("consultas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/consultas/1").to route_to("consultas#destroy", :id => "1")
    end

  end
end
