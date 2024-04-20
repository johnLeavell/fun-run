require "rails_helper"

RSpec.describe WaiversController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/waivers").to route_to("waivers#index")
    end

    it "routes to #new" do
      expect(get: "/waivers/new").to route_to("waivers#new")
    end

    it "routes to #show" do
      expect(get: "/waivers/1").to route_to("waivers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/waivers/1/edit").to route_to("waivers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/waivers").to route_to("waivers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/waivers/1").to route_to("waivers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/waivers/1").to route_to("waivers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/waivers/1").to route_to("waivers#destroy", id: "1")
    end
  end
end
