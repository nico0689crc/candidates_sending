class JobsCandidatesPipelinesController < ApplicationController
  before_action :set_jobs_candidates_pipeline, only: %i[ show edit update destroy ]

  # GET /jobs_candidates_pipelines or /jobs_candidates_pipelines.json
  def index
    @jobs_candidates_pipelines = JobsCandidatesPipeline.all
  end

  # GET /jobs_candidates_pipelines/1 or /jobs_candidates_pipelines/1.json
  def show
  end

  # GET /jobs_candidates_pipelines/new
  def new
    @jobs_candidates_pipeline = JobsCandidatesPipeline.new
  end

  # GET /jobs_candidates_pipelines/1/edit
  def edit
  end

  # POST /jobs_candidates_pipelines or /jobs_candidates_pipelines.json
  def create
    @jobs_candidates_pipeline = JobsCandidatesPipeline.new(jobs_candidates_pipeline_params)

    respond_to do |format|
      if @jobs_candidates_pipeline.save
        format.html { redirect_to jobs_candidates_pipeline_url(@jobs_candidates_pipeline), notice: "Jobs candidates pipeline was successfully created." }
        format.json { render :show, status: :created, location: @jobs_candidates_pipeline }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobs_candidates_pipeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs_candidates_pipelines/1 or /jobs_candidates_pipelines/1.json
  def update
    respond_to do |format|
      if @jobs_candidates_pipeline.update(jobs_candidates_pipeline_params)
        format.html { redirect_to jobs_candidates_pipeline_url(@jobs_candidates_pipeline), notice: "Jobs candidates pipeline was successfully updated." }
        format.json { render :show, status: :ok, location: @jobs_candidates_pipeline }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobs_candidates_pipeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs_candidates_pipelines/1 or /jobs_candidates_pipelines/1.json
  def destroy
    @jobs_candidates_pipeline.destroy

    respond_to do |format|
      format.html { redirect_to jobs_candidates_pipelines_url, notice: "Jobs candidates pipeline was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobs_candidates_pipeline
      @jobs_candidates_pipeline = JobsCandidatesPipeline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobs_candidates_pipeline_params
      params.require(:jobs_candidates_pipeline).permit(:jobs_candidate_id, :pipeline_step_id, :completed, :feedback)
    end
end
