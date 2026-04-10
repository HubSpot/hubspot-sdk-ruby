# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#list_schemas
      class CollectionResponseObjectSchemaNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Cms::ObjectSchema>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ObjectSchema] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Cms::ObjectSchema>]
      end
    end
  end
end
