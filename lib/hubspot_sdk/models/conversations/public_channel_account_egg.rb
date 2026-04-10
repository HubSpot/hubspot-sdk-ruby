# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicChannelAccountEgg < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute authorized
        #
        #   @return [Boolean]
        required :authorized, HubSpotSDK::Internal::Type::Boolean

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String, api_name: :inboxId

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute delivery_identifier
        #
        #   @return [HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier, nil]
        optional :delivery_identifier,
                 -> { HubSpotSDK::Conversations::PublicDeliveryIdentifier },
                 api_name: :deliveryIdentifier

        # @!method initialize(authorized:, inbox_id:, name:, delivery_identifier: nil)
        #   @param authorized [Boolean]
        #   @param inbox_id [String]
        #   @param name [String]
        #   @param delivery_identifier [HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier]
      end
    end
  end
end
