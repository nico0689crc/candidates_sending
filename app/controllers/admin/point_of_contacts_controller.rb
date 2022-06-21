module Admin
  class PointOfContactsController < ApplicationController
    before_action :set_point_of_contact, only: %i[ show edit update destroy ]

    # GET /point_of_contacts
    def index
      @presenter = PointOfContactsPresenter.new(params)
    end

    # GET /point_of_contacts/1
    def show
      @point_of_contact = @point_of_contact.decorate
    end

    # GET /point_of_contacts/new
    def new
      point_of_contact_manager = PointOfContactManager.new(params: params)
      @point_of_contact = point_of_contact_manager.build
    end

    # GET /point_of_contacts/1/edit
    def edit
    end

    # POST /point_of_contacts
    def create
      point_of_contact_manager = PointOfContactManager.new(params: params)

      if point_of_contact_manager.create
        redirect_to admin_point_of_contacts_url, notice: "Point of contact was successfully created."
      else
        @point_of_contact = point_of_contact_manager.object
        flash.now[:error] = "Point of contact could not create."
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /point_of_contacts/1
    def update
      point_of_contact_manager = PointOfContactManager.new(params: params, object: @point_of_contact)

      if point_of_contact_manager.update
        redirect_to admin_point_of_contacts_url, notice: "Point of contact was successfully updated."
      else
        @point_of_contact = point_of_contact_manager.object
        flash.now[:error] = "Point of contact could not update."
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /point_of_contacts/1
    def destroy
      point_of_contact_manager = PointOfContactManager.new(object: @point_of_contact)

      if point_of_contact_manager.destroy
        flash[:notice] = "Point of contact was successfully destroyed."
        redirect_to admin_point_of_contacts_url
      else
        flash[:error] = "Point of contact could not destroy."
        redirect_to admin_point_of_contacts_url
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_point_of_contact
        @point_of_contact = PointOfContact.find(params[:id])
      end
  end
end
