# typed: strong

module HubspotSDK
  module Models
    module Auth
      class TokenResponseIf < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Auth::TokenResponseIf,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :access_token

        sig { params(access_token: String).void }
        attr_writer :access_token

        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_in

        sig { params(expires_in: Integer).void }
        attr_writer :expires_in

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

        sig { returns(T.nilable(String)) }
        attr_reader :token_type

        sig { params(token_type: String).void }
        attr_writer :token_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :user_id

        sig { params(user_id: Integer).void }
        attr_writer :user_id

        sig do
          params(
            access_token: String,
            expires_in: Integer,
            hub_id: Integer,
            id_token: String,
            scopes: T::Array[String],
            token_type: String,
            user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          access_token: nil,
          expires_in: nil,
          hub_id: nil,
          id_token: nil,
          scopes: nil,
          token_type: nil,
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              access_token: String,
              expires_in: Integer,
              hub_id: Integer,
              id_token: String,
              scopes: T::Array[String],
              token_type: String,
              user_id: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
