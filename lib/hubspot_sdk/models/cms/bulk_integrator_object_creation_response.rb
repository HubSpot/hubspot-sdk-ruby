# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#create_object_type
      class BulkIntegratorObjectCreationResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute created_objects
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::Cms::IntegratorObjectCreationResponse}]
        required :created_objects,
                 -> { HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::IntegratorObjectCreationResponse] },
                 api_name: :createdObjects

        # @!method initialize(created_objects:)
        #   @param created_objects [Hash{Symbol=>HubSpotSDK::Models::Cms::IntegratorObjectCreationResponse}]
      end
    end
  end
end
