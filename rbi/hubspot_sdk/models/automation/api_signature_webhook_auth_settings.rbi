# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APISignatureWebhookAuthSettings < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APISignatureWebhookAuthSettings,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The appId that this signature will be generated for.
        sig { returns(Integer) }
        attr_accessor :app_id

        # The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"
        sig do
          returns(
            HubspotSDK::Automation::APISignatureWebhookAuthSettings::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            app_id: Integer,
            type:
              HubspotSDK::Automation::APISignatureWebhookAuthSettings::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The appId that this signature will be generated for.
          app_id:,
          # The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"
          type:
        )
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              type:
                HubspotSDK::Automation::APISignatureWebhookAuthSettings::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APISignatureWebhookAuthSettings::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SIGNATURE =
            T.let(
              :SIGNATURE,
              HubspotSDK::Automation::APISignatureWebhookAuthSettings::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APISignatureWebhookAuthSettings::Type::TaggedSymbol
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
