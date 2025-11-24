# typed: strong

module HubspotSDK
  module Models
    module Auth
      class OAuthCreateAccessTokenParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Auth::OAuthCreateAccessTokenParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :body_client_secret

        sig { params(body_client_secret: String).void }
        attr_writer :body_client_secret

        sig { returns(T.nilable(String)) }
        attr_reader :body_refresh_token

        sig { params(body_refresh_token: String).void }
        attr_writer :body_refresh_token

        sig { returns(T.nilable(String)) }
        attr_reader :client_id

        sig { params(client_id: String).void }
        attr_writer :client_id

        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        sig { returns(T.nilable(String)) }
        attr_reader :code_verifier

        sig { params(code_verifier: String).void }
        attr_writer :code_verifier

        sig do
          returns(
            T.nilable(
              HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType::OrSymbol
            )
          )
        end
        attr_reader :grant_type

        sig do
          params(
            grant_type:
              HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType::OrSymbol
          ).void
        end
        attr_writer :grant_type

        sig { returns(T.nilable(String)) }
        attr_reader :redirect_uri

        sig { params(redirect_uri: String).void }
        attr_writer :redirect_uri

        sig { returns(T.nilable(String)) }
        attr_reader :scope

        sig { params(scope: String).void }
        attr_writer :scope

        sig do
          params(
            body_client_secret: String,
            body_refresh_token: String,
            client_id: String,
            code: String,
            code_verifier: String,
            grant_type:
              HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType::OrSymbol,
            redirect_uri: String,
            scope: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          body_client_secret: nil,
          body_refresh_token: nil,
          client_id: nil,
          code: nil,
          code_verifier: nil,
          grant_type: nil,
          redirect_uri: nil,
          scope: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              body_client_secret: String,
              body_refresh_token: String,
              client_id: String,
              code: String,
              code_verifier: String,
              grant_type:
                HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType::OrSymbol,
              redirect_uri: String,
              scope: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module GrantType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHORIZATION_CODE =
            T.let(
              :authorization_code,
              HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType::TaggedSymbol
            )
          CLIENT_CREDENTIALS =
            T.let(
              :client_credentials,
              HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType::TaggedSymbol
            )
          REFRESH_TOKEN =
            T.let(
              :refresh_token,
              HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Auth::OAuthCreateAccessTokenParams::GrantType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
