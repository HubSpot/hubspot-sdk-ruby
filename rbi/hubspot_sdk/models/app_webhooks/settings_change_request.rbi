# typed: strong

module HubspotSDK
  module Models
    module AppWebhooks
      class SettingsChangeRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::AppWebhooks::SettingsChangeRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A publicly available URL for HubSpot to call where event payloads will be
        # delivered.
        sig { returns(String) }
        attr_accessor :target_url

        sig { returns(HubspotSDK::AppWebhooks::ThrottlingSettings) }
        attr_reader :throttling

        sig do
          params(
            throttling: HubspotSDK::AppWebhooks::ThrottlingSettings::OrHash
          ).void
        end
        attr_writer :throttling

        sig do
          params(
            target_url: String,
            throttling: HubspotSDK::AppWebhooks::ThrottlingSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A publicly available URL for HubSpot to call where event payloads will be
          # delivered.
          target_url:,
          throttling:
        )
        end

        sig do
          override.returns(
            {
              target_url: String,
              throttling: HubspotSDK::AppWebhooks::ThrottlingSettings
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
