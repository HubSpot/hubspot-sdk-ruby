# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Auth
      class OAuth
        # Authenticates a client and returns access and refresh tokens.
        #
        # @overload create_token(client_id: nil, client_secret: nil, code: nil, code_verifier: nil, grant_type: nil, redirect_uri: nil, refresh_token: nil, scope: nil, request_options: {})
        #
        # @param client_id [String]
        # @param client_secret [String]
        # @param code [String]
        # @param code_verifier [String]
        # @param grant_type [Symbol, HubspotSDK::Models::Auth::OAuthCreateTokenParams::GrantType]
        # @param redirect_uri [String]
        # @param refresh_token [String]
        # @param scope [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Auth::OAuthCreateTokenParams
        def create_token(params = {})
          parsed, options = HubspotSDK::Auth::OAuthCreateTokenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "oauth/2026-03/token",
            headers: {"content-type" => "application/x-www-form-urlencoded", "accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Returns validity and metadata for access and refresh tokens.
        #
        # @overload introspect_token(token: nil, client_id: nil, client_secret: nil, token_type_hint: nil, request_options: {})
        #
        # @param token [String]
        # @param client_id [String]
        # @param client_secret [String]
        # @param token_type_hint [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Auth::PublicAccessTokenInfoResponse, HubspotSDK::Models::Auth::PublicRefreshTokenInfoResponse]
        #
        # @see HubspotSDK::Models::Auth::OAuthIntrospectTokenParams
        def introspect_token(params = {})
          parsed, options = HubspotSDK::Auth::OAuthIntrospectTokenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "oauth/2026-03/token/introspect",
            headers: {"content-type" => "application/x-www-form-urlencoded"},
            body: parsed,
            model: HubspotSDK::Auth::TokenInfoResponseBaseIf,
            options: options
          )
        end

        # Deletes/Revokes provided Refresh Token
        #
        # @overload revoke_token(token: nil, client_id: nil, client_secret: nil, token_type_hint: nil, request_options: {})
        #
        # @param token [String]
        # @param client_id [String]
        # @param client_secret [String]
        # @param token_type_hint [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Auth::OAuthRevokeTokenParams
        def revoke_token(params = {})
          parsed, options = HubspotSDK::Auth::OAuthRevokeTokenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "oauth/2026-03/token/revoke",
            headers: {"content-type" => "application/x-www-form-urlencoded", "accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
