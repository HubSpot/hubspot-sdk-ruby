# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class ChannelIntegrationParticipant < HubspotSDK::Internal::Type::BaseModel
        # @!attribute delivery_identifier
        #
        #   @return [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
        required :delivery_identifier,
                 -> { HubspotSDK::Conversations::PublicDeliveryIdentifier },
                 api_name: :deliveryIdentifier

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute sender_actor_id
        #
        #   @return [String, nil]
        optional :sender_actor_id, String, api_name: :senderActorId

        # @!method initialize(delivery_identifier:, name: nil, sender_actor_id: nil)
        #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
        #   @param name [String]
        #   @param sender_actor_id [String]
      end
    end
  end
end
