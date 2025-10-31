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
        # @overload create_access_token(client_id: nil, client_secret: nil, code: nil, grant_type: nil, redirect_uri: nil, refresh_token: nil, request_options: {})
        #
        # @param client_id [String]
        # @param client_secret [String]
        # @param code [String]
        # @param grant_type [Symbol, HubspotSDK::Models::Auth::OAuthCreateAccessTokenParams::GrantType]
        # @param redirect_uri [String]
        # @param refresh_token [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Auth::TokenResponseIf]
        #
        # @see HubspotSDK::Models::Auth::OAuthCreateAccessTokenParams
        def create_access_token(params = {})
          parsed, options = HubspotSDK::Auth::OAuthCreateAccessTokenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "oauth/v1/token",
            headers: {"content-type" => "application/x-www-form-urlencoded"},
            body: parsed,
            model: HubspotSDK::Auth::TokenResponseIf,
            options: options
          )
        end

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
