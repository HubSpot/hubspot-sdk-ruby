# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Properties#create
      class CreatedResponseProperty < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_resource_id
        #
        #   @return [String]
        required :created_resource_id, String, api_name: :createdResourceId

        # @!attribute entity
        #   Defines a property
        #
        #   @return [HubspotSDK::Models::Property]
        required :entity, -> { HubspotSDK::Property }

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!method initialize(created_resource_id:, entity:, location: nil)
        #   @param created_resource_id [String]
        #
        #   @param entity [HubspotSDK::Models::Property] Defines a property
        #
        #   @param location [String]
      end
    end
  end
end
