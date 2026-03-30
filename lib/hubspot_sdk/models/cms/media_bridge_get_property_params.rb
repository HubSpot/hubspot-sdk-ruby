# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#get_property
      class MediaBridgeGetPropertyParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute properties
        #
        #   @return [String, nil]
        optional :properties, String

        # @!method initialize(app_id:, object_type:, property_name:, archived: nil, properties: nil, request_options: {})
        #   @param app_id [Integer]
        #
        #   @param object_type [String]
        #
        #   @param property_name [String]
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param properties [String]
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
