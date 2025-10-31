# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class CreatedResponseLabelsBetweenObjectPair < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_resource_id
        #
        #   @return [String]
        required :created_resource_id, String, api_name: :createdResourceId

        # @!attribute entity
        #
        #   @return [HubspotSDK::Models::CRM::LabelsBetweenObjectPair]
        required :entity, -> { HubspotSDK::CRM::LabelsBetweenObjectPair }

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!method initialize(created_resource_id:, entity:, location: nil)
        #   @param created_resource_id [String]
        #   @param entity [HubspotSDK::Models::CRM::LabelsBetweenObjectPair]
        #   @param location [String]
      end
    end
  end
end
