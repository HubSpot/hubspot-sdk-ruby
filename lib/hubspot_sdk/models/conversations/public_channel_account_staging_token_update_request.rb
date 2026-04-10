# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicChannelAccountStagingTokenUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute account_name
        #
        #   @return [String, nil]
        optional :account_name, String, api_name: :accountName

        # @!attribute delivery_identifier
        #
        #   @return [HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier, nil]
        optional :delivery_identifier,
                 -> { HubSpotSDK::Conversations::PublicDeliveryIdentifier },
                 api_name: :deliveryIdentifier

        # @!method initialize(account_name: nil, delivery_identifier: nil)
        #   @param account_name [String]
        #   @param delivery_identifier [HubSpotSDK::Models::Conversations::PublicDeliveryIdentifier]
      end
    end
  end
end
