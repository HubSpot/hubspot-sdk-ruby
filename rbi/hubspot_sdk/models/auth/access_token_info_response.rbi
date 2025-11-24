# typed: strong

module HubspotSDK
  module Models
    module Auth
      class AccessTokenInfoResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Auth::AccessTokenInfoResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :token

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(Integer) }
        attr_accessor :expires_in

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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_private_distribution

        sig { params(is_private_distribution: T::Boolean).void }
        attr_writer :is_private_distribution

        sig { returns(T.nilable(HubspotSDK::Auth::SignedAccessToken)) }
        attr_reader :signed_access_token

        sig do
          params(
            signed_access_token: HubspotSDK::Auth::SignedAccessToken::OrHash
          ).void
        end
        attr_writer :signed_access_token

        sig { returns(T.nilable(String)) }
        attr_reader :user

        sig { params(user: String).void }
        attr_writer :user

        sig do
          params(
            token: String,
            app_id: Integer,
            expires_in: Integer,
            hub_id: Integer,
            scopes: T::Array[String],
            token_type: String,
            user_id: Integer,
            hub_domain: String,
            is_private_distribution: T::Boolean,
            signed_access_token: HubspotSDK::Auth::SignedAccessToken::OrHash,
            user: String
          ).returns(T.attached_class)
        end
        def self.new(
          token:,
          app_id:,
          expires_in:,
          hub_id:,
          scopes:,
          token_type:,
          user_id:,
          hub_domain: nil,
          is_private_distribution: nil,
          signed_access_token: nil,
          user: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              app_id: Integer,
              expires_in: Integer,
              hub_id: Integer,
              scopes: T::Array[String],
              token_type: String,
              user_id: Integer,
              hub_domain: String,
              is_private_distribution: T::Boolean,
              signed_access_token: HubspotSDK::Auth::SignedAccessToken,
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
