module Admin 
  class JobsCandidatesController < ApplicationController
    before_action :set_jobs_candidate, only: %i[ show edit update destroy ]

    # GET /jobs_candidates
    def index
      @presenter = JobsCandidatesPresenter.new(params)
    end

    # GET /jobs_candidates/1
    def show
      @jobs_candidate = @jobs_candidate.decorate
    end

    # GET /jobs_candidates/new
    def new
      jobs_candidate_manager = JobsCandidateManager.new(params: params)
      @jobs_candidate = jobs_candidate_manager.build
    end

    # GET /jobs_candidates/1/edit
    def edit
    end

    # POST /jobs_candidates
    def create
      jobs_candidate_manager = JobsCandidateManager.new(params: params)

      if jobs_candidate_manager.create
        redirect_to admin_jobs_candidates_url, notice: "Job Candidate was successfully created."
      else
        @jobs_candidate = jobs_candidate_manager.object
        flash.now[:error] = "Job Candidate could not create."
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /jobs_candidates/1
    def update
      jobs_candidate_manager = JobsCandidateManager.new(params: params, object: @jobs_candidate)

      if jobs_candidate_manager.update
        redirect_to admin_jobs_candidates_url, notice: "Job Candidate was successfully updated."
      else
        @jobs_candidate = jobs_candidate_manager.object
        flash.now[:error] = "Job Candidate could not update."
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /jobs_candidates/1
    def destroy
      jobs_candidate_manager = JobsCandidateManager.new(object: @jobs_candidate)

      if jobs_candidate_manager.destroy
        flash[:notice] = "Job Candidate was successfully destroyed."
        redirect_to admin_jobs_candidates_url
      else
        flash[:error] = "Job Candidate could not destroy."
        redirect_to admin_jobs_candidates_url
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_jobs_candidate
        @jobs_candidate = JobsCandidate.find(params[:id])
      end
  end
end
