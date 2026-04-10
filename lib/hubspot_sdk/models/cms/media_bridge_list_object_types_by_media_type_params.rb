# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#list_object_types_by_media_type
      class MediaBridgeListObjectTypesByMediaTypeParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute media_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType]
        required :media_type, enum: -> { HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType }

        # @!attribute include_full_definition
        #
        #   @return [Boolean, nil]
        optional :include_full_definition, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(app_id:, media_type:, include_full_definition: nil, request_options: {})
        #   @param app_id [Integer]
        #   @param media_type [Symbol, HubSpotSDK::Models::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType]
        #   @param include_full_definition [Boolean]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        module MediaType
          extend HubSpotSDK::Internal::Type::Enum

          AUDIO = :AUDIO
          DOCUMENT = :DOCUMENT
          IMAGE = :IMAGE
          OTHER = :OTHER
          VIDEO = :VIDEO

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
