# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BulkIntegratorObjectCreationResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_objects
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Cms::IntegratorObjectCreationResponse}]
        required :created_objects,
                 -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::IntegratorObjectCreationResponse] },
                 api_name: :createdObjects

        # @!method initialize(created_objects:)
        #   @param created_objects [Hash{Symbol=>HubspotSDK::Models::Cms::IntegratorObjectCreationResponse}]
      end
    end
  end
end
