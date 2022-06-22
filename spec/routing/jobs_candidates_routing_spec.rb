require "rails_helper"

RSpec.describe JobsCandidatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/jobs_candidates").to route_to("jobs_candidates#index")
    end

    it "routes to #new" do
      expect(get: "/jobs_candidates/new").to route_to("jobs_candidates#new")
    end

    it "routes to #show" do
      expect(get: "/jobs_candidates/1").to route_to("jobs_candidates#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/jobs_candidates/1/edit").to route_to("jobs_candidates#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/jobs_candidates").to route_to("jobs_candidates#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/jobs_candidates/1").to route_to("jobs_candidates#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/jobs_candidates/1").to route_to("jobs_candidates#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/jobs_candidates/1").to route_to("jobs_candidates#destroy", id: "1")
    end
  end
end
