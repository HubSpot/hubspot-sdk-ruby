# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicSender < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute actor_id
        #
        #   @return [String, nil]
        optional :actor_id, String, api_name: :actorId

        # @!attribute delivery_identifier
        #
        #   @return [HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier, nil]
        optional :delivery_identifier,
                 -> { HubSpotSDK::Conversations::PublicDeliveryIdentifier },
                 api_name: :deliveryIdentifier

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute sender_field
        #
        #   @return [String, nil]
        optional :sender_field, String, api_name: :senderField

        # @!method initialize(actor_id: nil, delivery_identifier: nil, name: nil, sender_field: nil)
        #   @param actor_id [String]
        #   @param delivery_identifier [HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier]
        #   @param name [String]
        #   @param sender_field [String]
      end
    end
  end
end
