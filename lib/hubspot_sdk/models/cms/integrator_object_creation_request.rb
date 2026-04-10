# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class IntegratorObjectCreationRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute media_types
        #
        #   @return [Array<Symbol, HubSpotSDK::Models::Cms::IntegratorObjectCreationRequest::MediaType>]
        required :media_types,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType]
                 },
                 api_name: :mediaTypes

        # @!method initialize(media_types:)
        #   @param media_types [Array<Symbol, HubSpotSDK::Models::Cms::IntegratorObjectCreationRequest::MediaType>]

        module MediaType
          extend HubSpotSDK::Internal::Type::Enum

          VIDEO = :VIDEO
          AUDIO = :AUDIO
          DOCUMENT = :DOCUMENT
          OTHER = :OTHER
          IMAGE = :IMAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
