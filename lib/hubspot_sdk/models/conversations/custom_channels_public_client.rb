# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class CustomChannelsPublicClient < HubspotSDK::Internal::Type::BaseModel
        # @!attribute client_type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::CustomChannelsPublicClient::ClientType]
        required :client_type,
                 enum: -> { HubspotSDK::Conversations::CustomChannelsPublicClient::ClientType },
                 api_name: :clientType

        # @!attribute integration_app_id
        #
        #   @return [Integer, nil]
        optional :integration_app_id, Integer, api_name: :integrationAppId

        # @!method initialize(client_type:, integration_app_id: nil)
        #   @param client_type [Symbol, HubspotSDK::Models::Conversations::CustomChannelsPublicClient::ClientType]
        #   @param integration_app_id [Integer]

        # @see HubspotSDK::Models::Conversations::CustomChannelsPublicClient#client_type
        module ClientType
          extend HubspotSDK::Internal::Type::Enum

          HUBSPOT = :HUBSPOT
          SYSTEM = :SYSTEM
          INTEGRATION = :INTEGRATION
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
