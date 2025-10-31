# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccounts#create
        class ChannelAccountCreateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

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

          # @!method initialize(authorized:, inbox_id:, name:, delivery_identifier: nil, request_options: {})
          #   @param authorized [Boolean]
          #   @param inbox_id [String]
          #   @param name [String]
          #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
