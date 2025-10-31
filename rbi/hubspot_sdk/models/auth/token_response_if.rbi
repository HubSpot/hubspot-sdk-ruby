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

        sig { returns(String) }
        attr_accessor :access_token

        sig { returns(Integer) }
        attr_accessor :expires_in

        sig { returns(String) }
        attr_accessor :refresh_token

        sig { returns(String) }
        attr_accessor :token_type

        sig { returns(T.nilable(String)) }
        attr_reader :id_token

        sig { params(id_token: String).void }
        attr_writer :id_token

        sig do
          params(
            access_token: String,
            expires_in: Integer,
            refresh_token: String,
            token_type: String,
            id_token: String
          ).returns(T.attached_class)
        end
        def self.new(
          access_token:,
          expires_in:,
          refresh_token:,
          token_type:,
          id_token: nil
        )
        end

        sig do
          override.returns(
            {
              access_token: String,
              expires_in: Integer,
              refresh_token: String,
              token_type: String,
              id_token: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
