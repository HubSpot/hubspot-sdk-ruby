# typed: strong

module HubspotSDK
  module Models
    module Auth
      class RefreshTokenInfoResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Auth::RefreshTokenInfoResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :token

        sig { returns(String) }
        attr_accessor :client_id

        sig { returns(Integer) }
        attr_accessor :hub_id

        sig { returns(T::Array[String]) }
        attr_accessor :scopes

        sig { returns(String) }
        attr_accessor :token_type

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
            client_id: String,
            hub_id: Integer,
            scopes: T::Array[String],
            token_type: String,
            user_id: Integer,
            hub_domain: String,
            user: String
          ).returns(T.attached_class)
        end
        def self.new(
          token:,
          client_id:,
          hub_id:,
          scopes:,
          token_type:,
          user_id:,
          hub_domain: nil,
          user: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              client_id: String,
              hub_id: Integer,
              scopes: T::Array[String],
              token_type: String,
              user_id: Integer,
              hub_domain: String,
              user: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
