# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#list_properties
      class MediaBridgeListPropertiesParams < HubSpotSDK::Internal::Type::BaseModel
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

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubSpotSDK::Internal::Type::Boolean

        # @!attribute properties
        #
        #   @return [String, nil]
        optional :properties, String

        # @!method initialize(app_id:, object_type:, archived: nil, properties: nil, request_options: {})
        #   @param app_id [Integer]
        #
        #   @param object_type [String]
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param properties [String]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
