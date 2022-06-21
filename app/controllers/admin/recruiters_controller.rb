module Admin
  class RecruitersController < ApplicationController
    before_action :set_recruiter, only: %i[ show edit update destroy ]

    # GET /recruiters
    def index
      @presenter = RecruitersPresenter.new(params)
    end

    # GET /recruiters/1
    def show
      @recruiter = @recruiter.decorate
    end

    # GET /recruiters/new
    def new
      recruiter_manager = RecruiterManager.new(params: params)
      @recruiter = recruiter_manager.build
    end

    # GET /recruiters/1/edit
    def edit
    end

    # POST /recruiters
    def create
      recruiter_manager = RecruiterManager.new(params: params)

      if recruiter_manager.create
        redirect_to admin_recruiters_url, notice: "Recruiter was successfully created."
      else
        @recruiter = recruiter_manager.object
        flash.now[:error] = "Recruiter could not create."
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /recruiters/1
    def update
      recruiter_manager = RecruiterManager.new(params: params, object: @recruiter)

      if recruiter_manager.update
        redirect_to admin_recruiters_url, notice: "Recruiter was successfully updated."
      else
        @recruiter = recruiter_manager.object
        flash.now[:error] = "Recruiter could not update."
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /recruiters/1
    def destroy
      recruiter_manager = RecruiterManager.new(object: @recruiter)

      if recruiter_manager.destroy
        flash[:notice] = "Recruiter was successfully destroyed."
        redirect_to admin_recruiters_url
      else
        flash[:error] = "Recruiter could not destroy."
        redirect_to admin_recruiters_url
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_recruiter
        @recruiter = Recruiter.find(params[:id])
      end
  end
end
