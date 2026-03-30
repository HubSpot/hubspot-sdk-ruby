# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#list_properties
      class CollectionResponsePropertyNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Cms::Property1>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Property1] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Cms::Property1>]
      end
    end
  end
end
