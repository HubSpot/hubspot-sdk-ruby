# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicClient < HubspotSDK::Internal::Type::BaseModel
        # @!attribute client_type
        #   The type of the client.
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicClient::ClientType, nil]
        optional :client_type,
                 enum: -> { HubspotSDK::Conversations::PublicClient::ClientType },
                 api_name: :clientType

        # @!attribute integration_app_id
        #   The ID of the client if the client is an integration.
        #
        #   @return [Integer, nil]
        optional :integration_app_id, Integer, api_name: :integrationAppId

        # @!method initialize(client_type: nil, integration_app_id: nil)
        #   @param client_type [Symbol, HubspotSDK::Models::Conversations::PublicClient::ClientType] The type of the client.
        #
        #   @param integration_app_id [Integer] The ID of the client if the client is an integration.

        # The type of the client.
        #
        # @see HubspotSDK::Models::Conversations::PublicClient#client_type
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
