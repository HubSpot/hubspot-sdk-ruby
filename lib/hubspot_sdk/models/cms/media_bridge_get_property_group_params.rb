# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#get_property_group
      class MediaBridgeGetPropertyGroupParams < HubSpotSDK::Internal::Type::BaseModel
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

        # @!attribute group_name
        #
        #   @return [String]
        required :group_name, String

        # @!method initialize(app_id:, object_type:, group_name:, request_options: {})
        #   @param app_id [Integer]
        #   @param object_type [String]
        #   @param group_name [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
