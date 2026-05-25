# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Auth
      class ClientCredentialsTokenResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute access_token
        #
        #   @return [String]
        required :access_token, String

        # @!attribute expires_in
        #
        #   @return [Integer]
        required :expires_in, Integer

        # @!attribute token_type
        #
        #   @return [String]
        required :token_type, String

        # @!attribute token_use
        #
        #   @return [Symbol, HubSpotSDK::Models::Auth::ClientCredentialsTokenResponse::TokenUse]
        required :token_use, enum: -> { HubSpotSDK::Auth::ClientCredentialsTokenResponse::TokenUse }

        # @!attribute hub_id
        #
        #   @return [Integer, nil]
        optional :hub_id, Integer

        # @!attribute id_token
        #
        #   @return [String, nil]
        optional :id_token, String

        # @!attribute scopes
        #
        #   @return [Array<String>, nil]
        optional :scopes, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute user_id
        #
        #   @return [Integer, nil]
        optional :user_id, Integer

        # @!method initialize(access_token:, expires_in:, token_type:, token_use:, hub_id: nil, id_token: nil, scopes: nil, user_id: nil)
        #   @param access_token [String]
        #   @param expires_in [Integer]
        #   @param token_type [String]
        #   @param token_use [Symbol, HubSpotSDK::Models::Auth::ClientCredentialsTokenResponse::TokenUse]
        #   @param hub_id [Integer]
        #   @param id_token [String]
        #   @param scopes [Array<String>]
        #   @param user_id [Integer]

        # @see HubSpotSDK::Models::Auth::ClientCredentialsTokenResponse#token_use
        module TokenUse
          extend HubSpotSDK::Internal::Type::Enum

          CLIENT_CREDENTIALS = :client_credentials

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
