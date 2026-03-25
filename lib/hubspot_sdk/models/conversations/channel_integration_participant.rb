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

        # @!method initialize(delivery_identifier:, name: nil)
        #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
        #   @param name [String]
      end
    end
  end
end
