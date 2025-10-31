# frozen_string_literal: true

module HubspotSDK
  module Models
    module Auth
      # @see HubspotSDK::Resources::Auth::OAuth#create_access_token
      class TokenResponseIf < HubspotSDK::Internal::Type::BaseModel
        # @!attribute access_token
        #
        #   @return [String]
        required :access_token, String

        # @!attribute expires_in
        #
        #   @return [Integer]
        required :expires_in, Integer

        # @!attribute refresh_token
        #
        #   @return [String]
        required :refresh_token, String

        # @!attribute token_type
        #
        #   @return [String]
        required :token_type, String

        # @!attribute id_token
        #
        #   @return [String, nil]
        optional :id_token, String

        # @!method initialize(access_token:, expires_in:, refresh_token:, token_type:, id_token: nil)
        #   @param access_token [String]
        #   @param expires_in [Integer]
        #   @param refresh_token [String]
        #   @param token_type [String]
        #   @param id_token [String]
      end
    end
  end
end
