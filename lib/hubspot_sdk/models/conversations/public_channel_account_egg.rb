# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelAccountEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute authorized
        #
        #   @return [Boolean]
        required :authorized, HubspotSDK::Internal::Type::Boolean

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
        #   @return [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier, nil]
        optional :delivery_identifier,
                 -> { HubspotSDK::Conversations::PublicDeliveryIdentifier },
                 api_name: :deliveryIdentifier

        # @!method initialize(authorized:, inbox_id:, name:, delivery_identifier: nil)
        #   @param authorized [Boolean]
        #   @param inbox_id [String]
        #   @param name [String]
        #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
      end
    end
  end
end
