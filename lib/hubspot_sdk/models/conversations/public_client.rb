# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicClient < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute client_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicClient::ClientType]
        required :client_type,
                 enum: -> { HubSpotSDK::Conversations::PublicClient::ClientType },
                 api_name: :clientType

        # @!attribute integration_app_id
        #
        #   @return [Integer, nil]
        optional :integration_app_id, Integer, api_name: :integrationAppId

        # @!method initialize(client_type:, integration_app_id: nil)
        #   @param client_type [Symbol, HubSpotSDK::Models::Conversations::PublicClient::ClientType]
        #   @param integration_app_id [Integer]

        # @see HubSpotSDK::Models::Conversations::PublicClient#client_type
        module ClientType
          extend HubSpotSDK::Internal::Type::Enum

          HUBSPOT = :HUBSPOT
          INTEGRATION = :INTEGRATION
          SYSTEM = :SYSTEM
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
