# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ExternalOptionsMetaData < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter
        #
        #   @return [HubspotSDK::Models::Cms::FilteringMetaData, nil]
        optional :filter, -> { HubspotSDK::Cms::FilteringMetaData }

        # @!attribute related_object_type_id
        #
        #   @return [String, nil]
        optional :related_object_type_id, String, api_name: :relatedObjectTypeId

        # @!method initialize(filter: nil, related_object_type_id: nil)
        #   @param filter [HubspotSDK::Models::Cms::FilteringMetaData]
        #   @param related_object_type_id [String]
      end
    end
  end
end
