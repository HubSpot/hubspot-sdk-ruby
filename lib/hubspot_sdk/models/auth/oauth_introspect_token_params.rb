# frozen_string_literal: true

module HubspotSDK
  module Models
    module Auth
      # @see HubspotSDK::Resources::Auth::OAuth#introspect_token
      class OAuthIntrospectTokenParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute token
        #
        #   @return [String, nil]
        optional :token, String

        # @!attribute client_id
        #
        #   @return [String, nil]
        optional :client_id, String

        # @!attribute client_secret
        #
        #   @return [String, nil]
        optional :client_secret, String

        # @!attribute token_type_hint
        #
        #   @return [String, nil]
        optional :token_type_hint, String

        # @!method initialize(token: nil, client_id: nil, client_secret: nil, token_type_hint: nil, request_options: {})
        #   @param token [String]
        #   @param client_id [String]
        #   @param client_secret [String]
        #   @param token_type_hint [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
