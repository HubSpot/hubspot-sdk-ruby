# typed: strong

module HubspotSDK
  module Models
    module Auth
      class OAuthIntrospectTokenParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Auth::OAuthIntrospectTokenParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        sig { returns(T.nilable(String)) }
        attr_reader :client_id

        sig { params(client_id: String).void }
        attr_writer :client_id

        sig { returns(T.nilable(String)) }
        attr_reader :client_secret

        sig { params(client_secret: String).void }
        attr_writer :client_secret

        sig { returns(T.nilable(String)) }
        attr_reader :token_type_hint

        sig { params(token_type_hint: String).void }
        attr_writer :token_type_hint

        sig do
          params(
            token: String,
            client_id: String,
            client_secret: String,
            token_type_hint: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          token: nil,
          client_id: nil,
          client_secret: nil,
          token_type_hint: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              token: String,
              client_id: String,
              client_secret: String,
              token_type_hint: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
