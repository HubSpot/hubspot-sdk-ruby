# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ExternalOptionsMetaData < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter
        #
        #   @return [HubSpotSDK::Models::Cms::FilteringMetaData, nil]
        optional :filter, -> { HubSpotSDK::Cms::FilteringMetaData }

        # @!attribute related_object_type_id
        #
        #   @return [String, nil]
        optional :related_object_type_id, String, api_name: :relatedObjectTypeId

        # @!method initialize(filter: nil, related_object_type_id: nil)
        #   @param filter [HubSpotSDK::Models::Cms::FilteringMetaData]
        #   @param related_object_type_id [String]
      end
    end
  end
end
