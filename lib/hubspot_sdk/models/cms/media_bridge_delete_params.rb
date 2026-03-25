# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#delete
      class MediaBridgeDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute media_type
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridgeDeleteParams::MediaType]
        required :media_type, enum: -> { HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType }

        # @!attribute object_id_
        #
        #   @return [Integer]
        required :object_id_, Integer

        # @!method initialize(media_type:, object_id_:, request_options: {})
        #   @param media_type [Symbol, HubspotSDK::Models::Cms::MediaBridgeDeleteParams::MediaType]
        #   @param object_id_ [Integer]
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
