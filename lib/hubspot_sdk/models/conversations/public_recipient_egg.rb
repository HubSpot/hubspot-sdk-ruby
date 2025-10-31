# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicRecipientEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute delivery_identifiers
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicDeliveryIdentifier>]
        required :delivery_identifiers,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicDeliveryIdentifier]
                 },
                 api_name: :deliveryIdentifiers

        # @!attribute actor_id
        #
        #   @return [String, nil]
        optional :actor_id, String, api_name: :actorId

        # @!attribute delivery_identifier
        #
        #   @return [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier, nil]
        optional :delivery_identifier,
                 -> { HubspotSDK::Conversations::PublicDeliveryIdentifier },
                 api_name: :deliveryIdentifier

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute recipient_field
        #
        #   @return [String, nil]
        optional :recipient_field, String, api_name: :recipientField

        # @!method initialize(delivery_identifiers:, actor_id: nil, delivery_identifier: nil, name: nil, recipient_field: nil)
        #   @param delivery_identifiers [Array<HubspotSDK::Models::Conversations::PublicDeliveryIdentifier>]
        #   @param actor_id [String]
        #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
        #   @param name [String]
        #   @param recipient_field [String]
      end
    end
  end
end
