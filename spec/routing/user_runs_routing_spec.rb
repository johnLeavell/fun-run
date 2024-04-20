require "rails_helper"

RSpec.describe UserRunsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_runs").to route_to("user_runs#index")
    end

    it "routes to #new" do
      expect(get: "/user_runs/new").to route_to("user_runs#new")
    end

    it "routes to #show" do
      expect(get: "/user_runs/1").to route_to("user_runs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_runs/1/edit").to route_to("user_runs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_runs").to route_to("user_runs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_runs/1").to route_to("user_runs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_runs/1").to route_to("user_runs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_runs/1").to route_to("user_runs#destroy", id: "1")
    end
  end
end
