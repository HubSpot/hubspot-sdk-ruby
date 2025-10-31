# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccountStagingTokens#update
        class ChannelAccountStagingTokenUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute channel_id
          #
          #   @return [String]
          required :channel_id, String

          # @!attribute account_name
          #
          #   @return [String]
          required :account_name, String, api_name: :accountName

          # @!attribute delivery_identifier
          #
          #   @return [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
          required :delivery_identifier,
                   -> { HubspotSDK::Conversations::PublicDeliveryIdentifier },
                   api_name: :deliveryIdentifier

          # @!method initialize(channel_id:, account_name:, delivery_identifier:, request_options: {})
          #   @param channel_id [String]
          #   @param account_name [String]
          #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
