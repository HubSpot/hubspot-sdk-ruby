# typed: strong

module HubSpotSDK
  module Models
    module Auth
      class PublicRefreshTokenInfoResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Auth::PublicRefreshTokenInfoResponse,
              HubSpotSDK::Internal::AnyHash
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
        attr_accessor :hub_id

        sig { returns(T::Array[String]) }
        attr_accessor :scopes

        sig { returns(String) }
        attr_accessor :token_type

        sig do
          returns(
            HubSpotSDK::Auth::PublicRefreshTokenInfoResponse::TokenUse::TaggedSymbol
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
            hub_id: Integer,
            scopes: T::Array[String],
            token_type: String,
            token_use:
              HubSpotSDK::Auth::PublicRefreshTokenInfoResponse::TokenUse::OrSymbol,
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
          hub_id:,
          scopes:,
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
              hub_id: Integer,
              scopes: T::Array[String],
              token_type: String,
              token_use:
                HubSpotSDK::Auth::PublicRefreshTokenInfoResponse::TokenUse::TaggedSymbol,
              user_id: Integer,
              hub_domain: String,
              user: String
            }
          )
        end
        def to_hash
        end

        module TokenUse
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Auth::PublicRefreshTokenInfoResponse::TokenUse
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REFRESH_TOKEN =
            T.let(
              :refresh_token,
              HubSpotSDK::Auth::PublicRefreshTokenInfoResponse::TokenUse::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Auth::PublicRefreshTokenInfoResponse::TokenUse::TaggedSymbol
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
