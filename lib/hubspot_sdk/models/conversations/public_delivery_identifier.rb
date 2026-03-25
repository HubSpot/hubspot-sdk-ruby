# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicDeliveryIdentifier < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicDeliveryIdentifier::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicDeliveryIdentifier::Type }

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicDeliveryIdentifier::Type]
        #   @param value [String]

        # @see HubspotSDK::Models::Conversations::PublicDeliveryIdentifier#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

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
