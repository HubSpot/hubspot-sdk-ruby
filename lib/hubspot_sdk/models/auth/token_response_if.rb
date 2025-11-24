# frozen_string_literal: true

module HubspotSDK
  module Models
    module Auth
      # @see HubspotSDK::Resources::Auth::OAuth#create_access_token
      class TokenResponseIf < HubspotSDK::Internal::Type::BaseModel
        # @!attribute access_token
        #
        #   @return [String, nil]
        optional :access_token, String, api_name: :accessToken

        # @!attribute expires_in
        #
        #   @return [Integer, nil]
        optional :expires_in, Integer, api_name: :expiresIn

        # @!attribute hub_id
        #
        #   @return [Integer, nil]
        optional :hub_id, Integer, api_name: :hubId

        # @!attribute id_token
        #
        #   @return [String, nil]
        optional :id_token, String, api_name: :idToken

        # @!attribute scopes
        #
        #   @return [Array<String>, nil]
        optional :scopes, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute token_type
        #
        #   @return [String, nil]
        optional :token_type, String, api_name: :tokenType

        # @!attribute user_id
        #
        #   @return [Integer, nil]
        optional :user_id, Integer, api_name: :userId

        # @!method initialize(access_token: nil, expires_in: nil, hub_id: nil, id_token: nil, scopes: nil, token_type: nil, user_id: nil)
        #   @param access_token [String]
        #   @param expires_in [Integer]
        #   @param hub_id [Integer]
        #   @param id_token [String]
        #   @param scopes [Array<String>]
        #   @param token_type [String]
        #   @param user_id [Integer]
      end
    end
  end
end
