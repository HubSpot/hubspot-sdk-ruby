# frozen_string_literal: true

module HubspotSDK
  module Models
    module Auth
      # @see HubspotSDK::Resources::Auth::OAuth#create_token
      class OAuthCreateTokenParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute client_id
        #
        #   @return [String, nil]
        optional :client_id, String

        # @!attribute client_secret
        #
        #   @return [String, nil]
        optional :client_secret, String

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
        #   @return [Symbol, HubspotSDK::Models::Auth::OAuthCreateTokenParams::GrantType, nil]
        optional :grant_type, enum: -> { HubspotSDK::Auth::OAuthCreateTokenParams::GrantType }

        # @!attribute redirect_uri
        #
        #   @return [String, nil]
        optional :redirect_uri, String

        # @!attribute refresh_token
        #
        #   @return [String, nil]
        optional :refresh_token, String

        # @!attribute scope
        #
        #   @return [String, nil]
        optional :scope, String

        # @!method initialize(client_id: nil, client_secret: nil, code: nil, code_verifier: nil, grant_type: nil, redirect_uri: nil, refresh_token: nil, scope: nil, request_options: {})
        #   @param client_id [String]
        #   @param client_secret [String]
        #   @param code [String]
        #   @param code_verifier [String]
        #   @param grant_type [Symbol, HubspotSDK::Models::Auth::OAuthCreateTokenParams::GrantType]
        #   @param redirect_uri [String]
        #   @param refresh_token [String]
        #   @param scope [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        module GrantType
          extend HubspotSDK::Internal::Type::Enum

          AUTHORIZATION_CODE = :authorization_code
          REFRESH_TOKEN = :refresh_token

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
