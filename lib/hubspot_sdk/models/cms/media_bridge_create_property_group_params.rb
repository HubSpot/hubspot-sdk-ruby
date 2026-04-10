# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#create_property_group
      class MediaBridgeCreatePropertyGroupParams < HubSpotSDK::Models::PropertyGroupCreate
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!method initialize(app_id:, object_type:, request_options: {})
        #   @param app_id [Integer]
        #   @param object_type [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
