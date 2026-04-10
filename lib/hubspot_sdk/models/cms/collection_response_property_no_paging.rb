# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#list_properties
      class CollectionResponsePropertyNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Cms::Property1>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Property1] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Cms::Property1>]
      end
    end
  end
end
