class CandidatesExperiencesController < ApplicationController
  before_action :set_jobs_candidate, only: %i[ index ]
  
  def index
  end

  private

  def set_jobs_candidate
    @jobs_candidate = JobsCandidate.where(token: params[:token]).take

    if !@jobs_candidate
      render :not_found
    end
  end
end
