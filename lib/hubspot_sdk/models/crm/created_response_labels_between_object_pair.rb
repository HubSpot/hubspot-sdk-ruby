# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CreatedResponseLabelsBetweenObjectPair < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_resource_id
        #
        #   @return [String]
        required :created_resource_id, String, api_name: :createdResourceId

        # @!attribute entity
        #
        #   @return [HubspotSDK::Models::Crm::LabelsBetweenObjectPair]
        required :entity, -> { HubspotSDK::Crm::LabelsBetweenObjectPair }

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!method initialize(created_resource_id:, entity:, location: nil)
        #   @param created_resource_id [String]
        #   @param entity [HubspotSDK::Models::Crm::LabelsBetweenObjectPair]
        #   @param location [String]
      end
    end
  end
end
