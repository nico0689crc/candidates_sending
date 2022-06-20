require "rails_helper"

RSpec.describe PointOfContactsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/point_of_contacts").to route_to("point_of_contacts#index")
    end

    it "routes to #new" do
      expect(get: "/point_of_contacts/new").to route_to("point_of_contacts#new")
    end

    it "routes to #show" do
      expect(get: "/point_of_contacts/1").to route_to("point_of_contacts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/point_of_contacts/1/edit").to route_to("point_of_contacts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/point_of_contacts").to route_to("point_of_contacts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/point_of_contacts/1").to route_to("point_of_contacts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/point_of_contacts/1").to route_to("point_of_contacts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/point_of_contacts/1").to route_to("point_of_contacts#destroy", id: "1")
    end
  end
end
