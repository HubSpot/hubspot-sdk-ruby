# frozen_string_literal: true

module HubspotSDK
  module Models
    module Auth
      # @see HubspotSDK::Resources::Auth::OAuth#get_access_token
      class AccessTokenInfoResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute token
        #
        #   @return [String]
        required :token, String

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute expires_in
        #
        #   @return [Integer]
        required :expires_in, Integer

        # @!attribute hub_id
        #
        #   @return [Integer]
        required :hub_id, Integer

        # @!attribute scopes
        #
        #   @return [Array<String>]
        required :scopes, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute token_type
        #
        #   @return [String]
        required :token_type, String

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

        # @!method initialize(token:, app_id:, expires_in:, hub_id:, scopes:, token_type:, user_id:, hub_domain: nil, user: nil)
        #   @param token [String]
        #   @param app_id [Integer]
        #   @param expires_in [Integer]
        #   @param hub_id [Integer]
        #   @param scopes [Array<String>]
        #   @param token_type [String]
        #   @param user_id [Integer]
        #   @param hub_domain [String]
        #   @param user [String]
      end
    end
  end
end
