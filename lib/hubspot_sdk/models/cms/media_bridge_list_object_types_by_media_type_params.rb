# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#list_object_types_by_media_type
      class MediaBridgeListObjectTypesByMediaTypeParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [String]
        required :app_id, String

        # @!attribute media_type
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType]
        required :media_type, enum: -> { HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType }

        # @!attribute include_full_definition
        #
        #   @return [Boolean, nil]
        optional :include_full_definition, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(app_id:, media_type:, include_full_definition: nil, request_options: {})
        #   @param app_id [String]
        #   @param media_type [Symbol, HubspotSDK::Models::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType]
        #   @param include_full_definition [Boolean]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        module MediaType
          extend HubspotSDK::Internal::Type::Enum

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
