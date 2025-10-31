# typed: strong

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
        sig do
          params(
            client_id: String,
            client_secret: String,
            code: String,
            grant_type:
              HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType::OrSymbol,
            redirect_uri: String,
            refresh_token: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Auth::TokenResponseIf)
        end
        def create_access_token(
          client_id: nil,
          client_secret: nil,
          code: nil,
          grant_type: nil,
          redirect_uri: nil,
          refresh_token: nil,
          request_options: {}
        )
        end

        # Delete a refresh token, typically after a user uninstalls your app. Access
        # tokens generated with the refresh token will not be affected.
        #
        # This will not uninstall the application from HubSpot or inhibit data syncing
        # between an account and the app.
        sig do
          params(
            token: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_refresh_token(
          # The refresh token to delete.
          token,
          request_options: {}
        )
        end

        # Retrieve a token's metadata, including the email address of the user that the
        # token was created for and the ID of the account it's associated with.
        #
        # Note: HubSpot access tokens will fluctuate in size as the information that's
        # encoded in them changes over time. It's recommended to allow for tokens to be up
        # to 300 characters to account for any potential changes.
        sig do
          params(
            token: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Auth::AccessTokenInfoResponse)
        end
        def get_access_token(
          # The access token that you want to retrieve information about.
          token,
          request_options: {}
        )
        end

        # Retrieve a refresh token's metadata, including the email address of the user
        # that the token was created for and the ID of the account it's associated with.
        # Learn more about
        # [refresh tokens](https://developers.hubspot.com/docs/guides/api/app-management/oauth-tokens#generate-initial-access-and-refresh-tokens).
        sig do
          params(
            token: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Auth::RefreshTokenInfoResponse)
        end
        def get_refresh_token(
          # The refresh token to retrieve information about.
          token,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
