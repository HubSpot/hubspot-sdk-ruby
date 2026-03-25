# typed: strong

module HubspotSDK
  module Models
    module Auth
      class OAuthCreateTokenParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Auth::OAuthCreateTokenParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :client_id

        sig { params(client_id: String).void }
        attr_writer :client_id

        sig { returns(T.nilable(String)) }
        attr_reader :client_secret

        sig { params(client_secret: String).void }
        attr_writer :client_secret

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
              HubspotSDK::Auth::OAuthCreateTokenParams::GrantType::OrSymbol
            )
          )
        end
        attr_reader :grant_type

        sig do
          params(
            grant_type:
              HubspotSDK::Auth::OAuthCreateTokenParams::GrantType::OrSymbol
          ).void
        end
        attr_writer :grant_type

        sig { returns(T.nilable(String)) }
        attr_reader :redirect_uri

        sig { params(redirect_uri: String).void }
        attr_writer :redirect_uri

        sig { returns(T.nilable(String)) }
        attr_reader :refresh_token

        sig { params(refresh_token: String).void }
        attr_writer :refresh_token

        sig { returns(T.nilable(String)) }
        attr_reader :scope

        sig { params(scope: String).void }
        attr_writer :scope

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
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
              client_id: String,
              client_secret: String,
              code: String,
              code_verifier: String,
              grant_type:
                HubspotSDK::Auth::OAuthCreateTokenParams::GrantType::OrSymbol,
              redirect_uri: String,
              refresh_token: String,
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
              T.all(Symbol, HubspotSDK::Auth::OAuthCreateTokenParams::GrantType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHORIZATION_CODE =
            T.let(
              :authorization_code,
              HubspotSDK::Auth::OAuthCreateTokenParams::GrantType::TaggedSymbol
            )
          REFRESH_TOKEN =
            T.let(
              :refresh_token,
              HubspotSDK::Auth::OAuthCreateTokenParams::GrantType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Auth::OAuthCreateTokenParams::GrantType::TaggedSymbol
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
