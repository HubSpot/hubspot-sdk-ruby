# typed: strong

module HubspotSDK
  module Resources
    class Auth
      class OAuth
        # Authenticates a client and returns access and refresh tokens.
        sig do
          params(
            client_id: String,
            client_secret: String,
            code: String,
            code_verifier: String,
            grant_type:
              HubspotSDK::Auth::OAuthCreateTokenParams::GrantType::OrSymbol,
            redirect_uri: String,
            refresh_token: String,
            scope: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def create_token(
          client_id: nil,
          client_secret: nil,
          code: nil,
          code_verifier: nil,
          grant_type: nil,
          redirect_uri: nil,
          refresh_token: nil,
          scope: nil,
          request_options: {}
        )
        end

        # Returns validity and metadata for access and refresh tokens.
        sig do
          params(
            token: String,
            client_id: String,
            client_secret: String,
            token_type_hint: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Auth::TokenInfoResponseBaseIf)
        end
        def introspect_token(
          token: nil,
          client_id: nil,
          client_secret: nil,
          token_type_hint: nil,
          request_options: {}
        )
        end

        # Deletes/Revokes provided Refresh Token
        sig do
          params(
            token: String,
            client_id: String,
            client_secret: String,
            token_type_hint: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def revoke_token(
          token: nil,
          client_id: nil,
          client_secret: nil,
          token_type_hint: nil,
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
