require "rails_helper"

RSpec.describe JobsCandidatesPipelinesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/jobs_candidates_pipelines").to route_to("jobs_candidates_pipelines#index")
    end

    it "routes to #new" do
      expect(get: "/jobs_candidates_pipelines/new").to route_to("jobs_candidates_pipelines#new")
    end

    it "routes to #show" do
      expect(get: "/jobs_candidates_pipelines/1").to route_to("jobs_candidates_pipelines#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/jobs_candidates_pipelines/1/edit").to route_to("jobs_candidates_pipelines#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/jobs_candidates_pipelines").to route_to("jobs_candidates_pipelines#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/jobs_candidates_pipelines/1").to route_to("jobs_candidates_pipelines#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/jobs_candidates_pipelines/1").to route_to("jobs_candidates_pipelines#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/jobs_candidates_pipelines/1").to route_to("jobs_candidates_pipelines#destroy", id: "1")
    end
  end
end
