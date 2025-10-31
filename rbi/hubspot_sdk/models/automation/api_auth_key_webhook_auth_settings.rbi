# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIAuthKeyWebhookAuthSettings < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Where in the request this auth key should be located: "HEADER" or "QUERY_PARAM"
        sig do
          returns(
            HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Location::OrSymbol
          )
        end
        attr_accessor :location

        # The name to use for this auth key.
        sig { returns(String) }
        attr_accessor :name

        # The secret to pass through in this auth key.
        sig { returns(String) }
        attr_accessor :secret_name

        # The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"
        sig do
          returns(
            HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            location:
              HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Location::OrSymbol,
            name: String,
            secret_name: String,
            type:
              HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Where in the request this auth key should be located: "HEADER" or "QUERY_PARAM"
          location:,
          # The name to use for this auth key.
          name:,
          # The secret to pass through in this auth key.
          secret_name:,
          # The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"
          type:
        )
        end

        sig do
          override.returns(
            {
              location:
                HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Location::OrSymbol,
              name: String,
              secret_name: String,
              type:
                HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Where in the request this auth key should be located: "HEADER" or "QUERY_PARAM"
        module Location
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Location
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HEADER =
            T.let(
              :HEADER,
              HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Location::TaggedSymbol
            )
          QUERY_PARAM =
            T.let(
              :QUERY_PARAM,
              HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Location::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Location::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTH_KEY =
            T.let(
              :AUTH_KEY,
              HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Type::TaggedSymbol
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
