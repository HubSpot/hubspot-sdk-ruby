# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Auth
      class OAuth
        # Use a
        # [previously obtained refresh token](#get-oauth-2.0-access-and-refresh-tokens) to
        # generate a new access token.
        #
        # Access tokens are short lived. You can check the `expires_in` parameter when
        # generating an access token to determine its lifetime (in seconds). If you need
        # offline access to HubSpot data, store the refresh token you get when
        # [initiating your OAuth integration](https://developers.hubspot.com/docs/guides/api/app-management/oauth-tokens#initiating-oauth-access)
        # and use it to generate a new access token once the initial one expires.
        #
        # Note: HubSpot access tokens will fluctuate in size as the information that's
        # encoded in them changes over time. It's recommended to allow for tokens to be up
        # to 300 characters to account for any potential changes.
        #
        # @overload create_access_token(body_client_secret: nil, body_refresh_token: nil, client_id: nil, code: nil, code_verifier: nil, grant_type: nil, redirect_uri: nil, scope: nil, request_options: {})
        #
        # @param body_client_secret [String] Body param:
        #
        # @param body_refresh_token [String] Body param:
        #
        # @param client_id [String] Body param:
        #
        # @param code [String] Body param:
        #
        # @param code_verifier [String] Body param:
        #
        # @param grant_type [Symbol, HubspotSDK::Models::Auth::OAuthCreateAccessTokenParams::GrantType] Body param:
        #
        # @param redirect_uri [String] Body param:
        #
        # @param scope [String] Body param:
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Auth::TokenResponseIf]
        #
        # @see HubspotSDK::Models::Auth::OAuthCreateAccessTokenParams
        def create_access_token(params = {})
          parsed, options = HubspotSDK::Auth::OAuthCreateAccessTokenParams.dump_request(params)
          query_params = [:query_client_secret, :query_refresh_token]
          @client.request(
            method: :post,
            path: "oauth/v1/token",
            query: parsed.slice(*query_params).transform_keys(
              query_client_secret: "client_secret",
              query_refresh_token: "refresh_token"
            ),
            headers: {"content-type" => "application/x-www-form-urlencoded"},
            body: parsed.except(*query_params),
            model: HubspotSDK::Auth::TokenResponseIf,
            options: options
          )
        end

        # @deprecated
        #
        # Delete a refresh token, typically after a user uninstalls your app. Access
        # tokens generated with the refresh token will not be affected.
        #
        # This will not uninstall the application from HubSpot or inhibit data syncing
        # between an account and the app.
        #
        # @overload delete_refresh_token(token, request_options: {})
        #
        # @param token [String] The refresh token to delete.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Auth::OAuthDeleteRefreshTokenParams
        def delete_refresh_token(token, params = {})
          @client.request(
            method: :delete,
            path: ["oauth/v1/refresh-tokens/%1$s", token],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @deprecated
        #
        # Retrieve a token's metadata, including the email address of the user that the
        # token was created for and the ID of the account it's associated with.
        #
        # Note: HubSpot access tokens will fluctuate in size as the information that's
        # encoded in them changes over time. It's recommended to allow for tokens to be up
        # to 300 characters to account for any potential changes.
        #
        # @overload get_access_token(token, request_options: {})
        #
        # @param token [String] The access token that you want to retrieve information about.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Auth::AccessTokenInfoResponse]
        #
        # @see HubspotSDK::Models::Auth::OAuthGetAccessTokenParams
        def get_access_token(token, params = {})
          @client.request(
            method: :get,
            path: ["oauth/v1/access-tokens/%1$s", token],
            model: HubspotSDK::Auth::AccessTokenInfoResponse,
            options: params[:request_options]
          )
        end

        # @deprecated
        #
        # Retrieve a refresh token's metadata, including the email address of the user
        # that the token was created for and the ID of the account it's associated with.
        # Learn more about
        # [refresh tokens](https://developers.hubspot.com/docs/guides/api/app-management/oauth-tokens#generate-initial-access-and-refresh-tokens).
        #
        # @overload get_refresh_token(token, request_options: {})
        #
        # @param token [String] The refresh token to retrieve information about.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Auth::RefreshTokenInfoResponse]
        #
        # @see HubspotSDK::Models::Auth::OAuthGetRefreshTokenParams
        def get_refresh_token(token, params = {})
          @client.request(
            method: :get,
            path: ["oauth/v1/refresh-tokens/%1$s", token],
            model: HubspotSDK::Auth::RefreshTokenInfoResponse,
            options: params[:request_options]
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
