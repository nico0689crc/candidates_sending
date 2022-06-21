# frozen_string_literal: true
module Api
  module V1
    class Admin::Api::V1::PointOfContactsController < ApiController
      before_action :point_of_contact, only: %i[show edit update destroy]

      # GET api/v1/point_of_contacts
      def index
        @presenter = PointOfContactsPresenter.new(params)
        json_response(data: ActiveModel::Serializer::CollectionSerializer.new(@presenter.point_of_contacts, serializer: PointOfContactSerializer))
      end

      # GET api/v1/point_of_contacts/1
      def show
        @point_of_contact = @point_of_contact.decorate
        json_response(data: PointOfContactSerializer.new(@point_of_contact))
      end

      # POST api/v1/point_of_contacts
      def create
        point_of_contact_manager = PointOfContactManager.new(params: params)

        if point_of_contact_manager.create
          point_of_contact = point_of_contact_manager.object.decorate
          json_response(message: I18n.t(:success, scope: %i[messages create]), data: PointOfContactSerializer.new(product), status: :created)
        else
          json_response(message: I18n.t(:error, scope: %i[messages create]), data: point_of_contact_manager.object.errors, status: :unprocessable_entity)
        end
      end

      # PATCH/PUT api/v1/point_of_contacts/1
      def update
        point_of_contact_manager = PointOfContactManager.new(params: params, object: @point_of_contact)

        if point_of_contact_manager.update
          json_response(message: I18n.t(:success, scope: %i[messages update]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages update]), data: point_of_contact_manager.object.errors, status: :unprocessable_entity)
        end
      end

      # DELETE api/v1/point_of_contacts/1
      def destroy
        point_of_contact_manager = PointOfContactManager.new(object: @point_of_contact)

        if point_of_contact_manager.destroy
          json_response(message: I18n.t(:success, scope: %i[messages destroy]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages destroy]), status: :unprocessable_entity)
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def point_of_contact
        @point_of_contact = PointOfContact.find(params[:id])
      end
    end
  end
end
