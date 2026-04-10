# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicDeliveryIdentifier < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::PublicDeliveryIdentifier::Type }

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier::Type]
        #   @param value [String]

        # @see HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          CHANNEL_SPECIFIC_OPAQUE_ID = :CHANNEL_SPECIFIC_OPAQUE_ID
          HS_EMAIL_ADDRESS = :HS_EMAIL_ADDRESS
          HS_PHONE_NUMBER = :HS_PHONE_NUMBER
          HS_SHORT_CODE = :HS_SHORT_CODE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
