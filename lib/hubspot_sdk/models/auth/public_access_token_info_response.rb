# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Auth
      class PublicAccessTokenInfoResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute token
        #
        #   @return [String]
        required :token, String

        # @!attribute active
        #
        #   @return [Boolean]
        required :active, HubSpotSDK::Internal::Type::Boolean

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute client_id
        #
        #   @return [String]
        required :client_id, String

        # @!attribute expires_in
        #
        #   @return [Integer]
        required :expires_in, Integer

        # @!attribute hub_id
        #
        #   @return [Integer]
        required :hub_id, Integer

        # @!attribute is_private_distribution
        #
        #   @return [Boolean]
        required :is_private_distribution, HubSpotSDK::Internal::Type::Boolean

        # @!attribute scopes
        #
        #   @return [Array<String>]
        required :scopes, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute signed_access_token
        #
        #   @return [HubSpotSDK::Models::Auth::SignedAccessToken]
        required :signed_access_token, -> { HubSpotSDK::Auth::SignedAccessToken }

        # @!attribute token_type
        #
        #   @return [String]
        required :token_type, String

        # @!attribute token_use
        #
        #   @return [Symbol, HubSpotSDK::Models::Auth::PublicAccessTokenInfoResponse::TokenUse]
        required :token_use, enum: -> { HubSpotSDK::Auth::PublicAccessTokenInfoResponse::TokenUse }

        # @!attribute user_id
        #
        #   @return [Integer]
        required :user_id, Integer

        # @!attribute hub_domain
        #
        #   @return [String, nil]
        optional :hub_domain, String

        # @!attribute user
        #
        #   @return [String, nil]
        optional :user, String

        # @!method initialize(token:, active:, app_id:, client_id:, expires_in:, hub_id:, is_private_distribution:, scopes:, signed_access_token:, token_type:, token_use:, user_id:, hub_domain: nil, user: nil)
        #   @param token [String]
        #   @param active [Boolean]
        #   @param app_id [Integer]
        #   @param client_id [String]
        #   @param expires_in [Integer]
        #   @param hub_id [Integer]
        #   @param is_private_distribution [Boolean]
        #   @param scopes [Array<String>]
        #   @param signed_access_token [HubSpotSDK::Models::Auth::SignedAccessToken]
        #   @param token_type [String]
        #   @param token_use [Symbol, HubSpotSDK::Models::Auth::PublicAccessTokenInfoResponse::TokenUse]
        #   @param user_id [Integer]
        #   @param hub_domain [String]
        #   @param user [String]

        # @see HubSpotSDK::Models::Auth::PublicAccessTokenInfoResponse#token_use
        module TokenUse
          extend HubSpotSDK::Internal::Type::Enum

          ACCESS_TOKEN = :access_token

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
