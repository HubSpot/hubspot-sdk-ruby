# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicRecipient < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute delivery_identifier
        #
        #   @return [HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier]
        required :delivery_identifier,
                 -> { HubSpotSDK::Conversations::PublicDeliveryIdentifier },
                 api_name: :deliveryIdentifier

        # @!attribute actor_id
        #
        #   @return [String, nil]
        optional :actor_id, String, api_name: :actorId

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute recipient_field
        #
        #   @return [String, nil]
        optional :recipient_field, String, api_name: :recipientField

        # @!method initialize(delivery_identifier:, actor_id: nil, name: nil, recipient_field: nil)
        #   @param delivery_identifier [HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier]
        #   @param actor_id [String]
        #   @param name [String]
        #   @param recipient_field [String]
      end
    end
  end
end
