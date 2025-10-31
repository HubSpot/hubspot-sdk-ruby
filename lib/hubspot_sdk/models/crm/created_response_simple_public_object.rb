# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class CreatedResponseSimplePublicObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_resource_id
        #
        #   @return [String]
        required :created_resource_id, String, api_name: :createdResourceId

        # @!attribute entity
        #   A simple public object.
        #
        #   @return [HubspotSDK::Models::CRM::SimplePublicObject]
        required :entity, -> { HubspotSDK::CRM::SimplePublicObject }

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!method initialize(created_resource_id:, entity:, location: nil)
        #   @param created_resource_id [String]
        #
        #   @param entity [HubspotSDK::Models::CRM::SimplePublicObject] A simple public object.
        #
        #   @param location [String]
      end
    end
  end
end
