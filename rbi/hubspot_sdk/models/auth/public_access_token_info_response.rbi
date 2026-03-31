# typed: strong

module HubspotSDK
  module Models
    module Auth
      class PublicAccessTokenInfoResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Auth::PublicAccessTokenInfoResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :token

        sig { returns(T::Boolean) }
        attr_accessor :active

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :client_id

        sig { returns(Integer) }
        attr_accessor :expires_in

        sig { returns(Integer) }
        attr_accessor :hub_id

        sig { returns(T::Boolean) }
        attr_accessor :is_private_distribution

        sig { returns(T::Array[String]) }
        attr_accessor :scopes

        sig { returns(HubspotSDK::Auth::SignedAccessToken) }
        attr_reader :signed_access_token

        sig do
          params(
            signed_access_token: HubspotSDK::Auth::SignedAccessToken::OrHash
          ).void
        end
        attr_writer :signed_access_token

        sig { returns(String) }
        attr_accessor :token_type

        sig do
          returns(
            HubspotSDK::Auth::PublicAccessTokenInfoResponse::TokenUse::TaggedSymbol
          )
        end
        attr_accessor :token_use

        sig { returns(Integer) }
        attr_accessor :user_id

        sig { returns(T.nilable(String)) }
        attr_reader :hub_domain

        sig { params(hub_domain: String).void }
        attr_writer :hub_domain

        sig { returns(T.nilable(String)) }
        attr_reader :user

        sig { params(user: String).void }
        attr_writer :user

        sig do
          params(
            token: String,
            active: T::Boolean,
            app_id: Integer,
            client_id: String,
            expires_in: Integer,
            hub_id: Integer,
            is_private_distribution: T::Boolean,
            scopes: T::Array[String],
            signed_access_token: HubspotSDK::Auth::SignedAccessToken::OrHash,
            token_type: String,
            token_use:
              HubspotSDK::Auth::PublicAccessTokenInfoResponse::TokenUse::OrSymbol,
            user_id: Integer,
            hub_domain: String,
            user: String
          ).returns(T.attached_class)
        end
        def self.new(
          token:,
          active:,
          app_id:,
          client_id:,
          expires_in:,
          hub_id:,
          is_private_distribution:,
          scopes:,
          signed_access_token:,
          token_type:,
          token_use:,
          user_id:,
          hub_domain: nil,
          user: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              active: T::Boolean,
              app_id: Integer,
              client_id: String,
              expires_in: Integer,
              hub_id: Integer,
              is_private_distribution: T::Boolean,
              scopes: T::Array[String],
              signed_access_token: HubspotSDK::Auth::SignedAccessToken,
              token_type: String,
              token_use:
                HubspotSDK::Auth::PublicAccessTokenInfoResponse::TokenUse::TaggedSymbol,
              user_id: Integer,
              hub_domain: String,
              user: String
            }
          )
        end
        def to_hash
        end

        module TokenUse
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Auth::PublicAccessTokenInfoResponse::TokenUse
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCESS_TOKEN =
            T.let(
              :access_token,
              HubspotSDK::Auth::PublicAccessTokenInfoResponse::TokenUse::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Auth::PublicAccessTokenInfoResponse::TokenUse::TaggedSymbol
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
