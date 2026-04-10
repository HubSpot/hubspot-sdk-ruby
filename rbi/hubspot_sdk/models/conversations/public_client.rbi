# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicClient < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicClient,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Conversations::PublicClient::ClientType::TaggedSymbol
          )
        end
        attr_accessor :client_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :integration_app_id

        sig { params(integration_app_id: Integer).void }
        attr_writer :integration_app_id

        sig do
          params(
            client_type:
              HubSpotSDK::Conversations::PublicClient::ClientType::OrSymbol,
            integration_app_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(client_type:, integration_app_id: nil)
        end

        sig do
          override.returns(
            {
              client_type:
                HubSpotSDK::Conversations::PublicClient::ClientType::TaggedSymbol,
              integration_app_id: Integer
            }
          )
        end
        def to_hash
        end

        module ClientType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Conversations::PublicClient::ClientType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT =
            T.let(
              :HUBSPOT,
              HubSpotSDK::Conversations::PublicClient::ClientType::TaggedSymbol
            )
          INTEGRATION =
            T.let(
              :INTEGRATION,
              HubSpotSDK::Conversations::PublicClient::ClientType::TaggedSymbol
            )
          SYSTEM =
            T.let(
              :SYSTEM,
              HubSpotSDK::Conversations::PublicClient::ClientType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubSpotSDK::Conversations::PublicClient::ClientType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicClient::ClientType::TaggedSymbol
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
