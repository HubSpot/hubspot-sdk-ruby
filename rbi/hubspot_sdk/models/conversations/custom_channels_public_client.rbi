# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class CustomChannelsPublicClient < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::CustomChannelsPublicClient,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Conversations::CustomChannelsPublicClient::ClientType::OrSymbol
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
              HubspotSDK::Conversations::CustomChannelsPublicClient::ClientType::OrSymbol,
            integration_app_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(client_type:, integration_app_id: nil)
        end

        sig do
          override.returns(
            {
              client_type:
                HubspotSDK::Conversations::CustomChannelsPublicClient::ClientType::OrSymbol,
              integration_app_id: Integer
            }
          )
        end
        def to_hash
        end

        module ClientType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::CustomChannelsPublicClient::ClientType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT =
            T.let(
              :HUBSPOT,
              HubspotSDK::Conversations::CustomChannelsPublicClient::ClientType::TaggedSymbol
            )
          SYSTEM =
            T.let(
              :SYSTEM,
              HubspotSDK::Conversations::CustomChannelsPublicClient::ClientType::TaggedSymbol
            )
          INTEGRATION =
            T.let(
              :INTEGRATION,
              HubspotSDK::Conversations::CustomChannelsPublicClient::ClientType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Conversations::CustomChannelsPublicClient::ClientType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::CustomChannelsPublicClient::ClientType::TaggedSymbol
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
