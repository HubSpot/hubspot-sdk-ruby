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

        sig { returns(Integer) }
        attr_accessor :app_id

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
        def self.new(app_id:, type:)
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
