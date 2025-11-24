# frozen_string_literal: true

module HubspotSDK
  module Models
    module Auth
      # @see HubspotSDK::Resources::Auth::OAuth#create_access_token
      class OAuthCreateAccessTokenParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute body_client_secret
        #
        #   @return [String, nil]
        optional :body_client_secret, String, api_name: :client_secret

        # @!attribute body_refresh_token
        #
        #   @return [String, nil]
        optional :body_refresh_token, String, api_name: :refresh_token

        # @!attribute client_id
        #
        #   @return [String, nil]
        optional :client_id, String

        # @!attribute code
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute code_verifier
        #
        #   @return [String, nil]
        optional :code_verifier, String

        # @!attribute grant_type
        #
        #   @return [Symbol, HubspotSDK::Models::Auth::OAuthCreateAccessTokenParams::GrantType, nil]
        optional :grant_type, enum: -> { HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType }

        # @!attribute redirect_uri
        #
        #   @return [String, nil]
        optional :redirect_uri, String

        # @!attribute scope
        #
        #   @return [String, nil]
        optional :scope, String

        # @!method initialize(body_client_secret: nil, body_refresh_token: nil, client_id: nil, code: nil, code_verifier: nil, grant_type: nil, redirect_uri: nil, scope: nil, request_options: {})
        #   @param body_client_secret [String]
        #   @param body_refresh_token [String]
        #   @param client_id [String]
        #   @param code [String]
        #   @param code_verifier [String]
        #   @param grant_type [Symbol, HubspotSDK::Models::Auth::OAuthCreateAccessTokenParams::GrantType]
        #   @param redirect_uri [String]
        #   @param scope [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        module GrantType
          extend HubspotSDK::Internal::Type::Enum

          AUTHORIZATION_CODE = :authorization_code
          CLIENT_CREDENTIALS = :client_credentials
          REFRESH_TOKEN = :refresh_token

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
