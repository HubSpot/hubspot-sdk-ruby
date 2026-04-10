# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#list_schemas
      class MediaBridgeListSchemasParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(app_id:, archived: nil, request_options: {})
        #   @param app_id [Integer]
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
