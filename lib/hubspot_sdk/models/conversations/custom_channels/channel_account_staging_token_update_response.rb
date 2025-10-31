# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccountStagingTokens#update
        class ChannelAccountStagingTokenUpdateResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute account_token
          #
          #   @return [String]
          required :account_token, String, api_name: :accountToken

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute generic_channel_id
          #
          #   @return [Integer]
          required :generic_channel_id, Integer, api_name: :genericChannelId

          # @!attribute inbox_id
          #
          #   @return [Integer]
          required :inbox_id, Integer, api_name: :inboxId

          # @!attribute user_id
          #
          #   @return [Integer]
          required :user_id, Integer, api_name: :userId

          # @!attribute account_name
          #
          #   @return [String, nil]
          optional :account_name, String, api_name: :accountName

          # @!attribute delivery_identifier
          #
          #   @return [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier, nil]
          optional :delivery_identifier,
                   -> { HubspotSDK::Conversations::PublicDeliveryIdentifier },
                   api_name: :deliveryIdentifier

          # @!method initialize(account_token:, created_at:, generic_channel_id:, inbox_id:, user_id:, account_name: nil, delivery_identifier: nil)
          #   @param account_token [String]
          #   @param created_at [Time]
          #   @param generic_channel_id [Integer]
          #   @param inbox_id [Integer]
          #   @param user_id [Integer]
          #   @param account_name [String]
          #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
        end
      end
    end
  end
end
