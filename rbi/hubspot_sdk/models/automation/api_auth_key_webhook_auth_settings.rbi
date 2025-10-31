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

        sig do
          returns(
            HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Location::OrSymbol
          )
        end
        attr_accessor :location

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :secret_name

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
        def self.new(location:, name:, secret_name:, type:)
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
