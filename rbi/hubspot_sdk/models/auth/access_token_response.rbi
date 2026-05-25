# typed: strong

module HubSpotSDK
  module Models
    module Auth
      class AccessTokenResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Auth::AccessTokenResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :access_token

        sig { returns(Integer) }
        attr_accessor :expires_in

        sig { returns(String) }
        attr_accessor :refresh_token

        sig { returns(String) }
        attr_accessor :token_type

        sig do
          returns(HubSpotSDK::Auth::AccessTokenResponse::TokenUse::TaggedSymbol)
        end
        attr_accessor :token_use

        sig { returns(T.nilable(Integer)) }
        attr_reader :hub_id

        sig { params(hub_id: Integer).void }
        attr_writer :hub_id

        sig { returns(T.nilable(String)) }
        attr_reader :id_token

        sig { params(id_token: String).void }
        attr_writer :id_token

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :scopes

        sig { params(scopes: T::Array[String]).void }
        attr_writer :scopes

        sig { returns(T.nilable(Integer)) }
        attr_reader :user_id

        sig { params(user_id: Integer).void }
        attr_writer :user_id

        sig do
          params(
            access_token: String,
            expires_in: Integer,
            refresh_token: String,
            token_type: String,
            token_use:
              HubSpotSDK::Auth::AccessTokenResponse::TokenUse::OrSymbol,
            hub_id: Integer,
            id_token: String,
            scopes: T::Array[String],
            user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          access_token:,
          expires_in:,
          refresh_token:,
          token_type:,
          token_use:,
          hub_id: nil,
          id_token: nil,
          scopes: nil,
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              access_token: String,
              expires_in: Integer,
              refresh_token: String,
              token_type: String,
              token_use:
                HubSpotSDK::Auth::AccessTokenResponse::TokenUse::TaggedSymbol,
              hub_id: Integer,
              id_token: String,
              scopes: T::Array[String],
              user_id: Integer
            }
          )
        end
        def to_hash
        end

        module TokenUse
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Auth::AccessTokenResponse::TokenUse)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCESS_TOKEN =
            T.let(
              :access_token,
              HubSpotSDK::Auth::AccessTokenResponse::TokenUse::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Auth::AccessTokenResponse::TokenUse::TaggedSymbol
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
