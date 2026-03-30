# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#list_schemas
      class CollectionResponseObjectSchemaNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Cms::ObjectSchema>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ObjectSchema] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Cms::ObjectSchema>]
      end
    end
  end
end
