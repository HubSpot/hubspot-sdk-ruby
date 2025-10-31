# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IntegratorObjectCreationRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute media_types
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Cms::IntegratorObjectCreationRequest::MediaType>]
        required :media_types,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType]
                 },
                 api_name: :mediaTypes

        # @!method initialize(media_types:)
        #   @param media_types [Array<Symbol, HubspotSDK::Models::Cms::IntegratorObjectCreationRequest::MediaType>]

        module MediaType
          extend HubspotSDK::Internal::Type::Enum

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
