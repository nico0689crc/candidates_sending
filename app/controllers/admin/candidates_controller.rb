module Admin 
  class CandidatesController < ApplicationController
    before_action :set_candidate, only: %i[ show edit update destroy ]

    # GET /candidates
    def index
      @presenter = CandidatesPresenter.new(params)
    end

    # GET /candidates/1
    def show
      @candidate = @candidate.decorate
    end

    # GET /candidates/new
    def new
      candidate_manager = CandidateManager.new(params: params)
      @candidate = candidate_manager.build
    end

    # GET /candidates/1/edit
    def edit
    end

    # POST /candidates
    def create
      candidate_manager = CandidateManager.new(params: params)

      if candidate_manager.create
        redirect_to admin_candidates_url, notice: "Candidate was successfully created."
      else
        @candidate = candidate_manager.object
        flash.now[:error] = "Candidate could not create."
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /candidates/1
    def update
      candidate_manager = CandidateManager.new(params: params, object: @candidate)

      if candidate_manager.update
        redirect_to admin_candidates_url, notice: "Candidates was successfully updated."
      else
        @candidate = candidate_manager.object
        flash.now[:error] = "Candidates could not update."
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /candidates/1
    def destroy
      candidate_manager = CandidateManager.new(object: @candidate)

      if candidate_manager.destroy
        flash[:notice] = "Candidates was successfully destroyed."
        redirect_to admin_candidates_url
      else
        flash[:error] = "Candidates could not destroy."
        redirect_to admin_candidates_url
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_candidate
        @candidate = Candidate.find(params[:id])
      end
  end
end