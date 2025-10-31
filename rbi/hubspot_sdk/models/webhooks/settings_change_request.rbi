# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class SettingsChangeRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::SettingsChangeRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A publicly available URL for HubSpot to call where event payloads will be
        # delivered.
        sig { returns(String) }
        attr_accessor :target_url

        # Configuration details for webhook throttling.
        sig { returns(HubspotSDK::Webhooks::ThrottlingSettings) }
        attr_reader :throttling

        sig do
          params(
            throttling: HubspotSDK::Webhooks::ThrottlingSettings::OrHash
          ).void
        end
        attr_writer :throttling

        # New or updated webhook settings for an app.
        sig do
          params(
            target_url: String,
            throttling: HubspotSDK::Webhooks::ThrottlingSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A publicly available URL for HubSpot to call where event payloads will be
          # delivered.
          target_url:,
          # Configuration details for webhook throttling.
          throttling:
        )
        end

        sig do
          override.returns(
            {
              target_url: String,
              throttling: HubspotSDK::Webhooks::ThrottlingSettings
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
