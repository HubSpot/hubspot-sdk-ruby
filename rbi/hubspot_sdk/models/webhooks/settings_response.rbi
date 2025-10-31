# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class SettingsResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::SettingsResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # When this subscription was created. Formatted as milliseconds from the
        # [Unix epoch](#).
        sig { returns(Time) }
        attr_accessor :created_at

        # A publicly available URL for HubSpot to call where event payloads will be
        # delivered. See [link-so-some-doc](#) for details about the format of these event
        # payloads.
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

        # When this subscription was last updated. Formatted as milliseconds from the
        # [Unix epoch](#).
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Webhook settings for an app.
        sig do
          params(
            created_at: Time,
            target_url: String,
            throttling: HubspotSDK::Webhooks::ThrottlingSettings::OrHash,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # When this subscription was created. Formatted as milliseconds from the
          # [Unix epoch](#).
          created_at:,
          # A publicly available URL for HubSpot to call where event payloads will be
          # delivered. See [link-so-some-doc](#) for details about the format of these event
          # payloads.
          target_url:,
          # Configuration details for webhook throttling.
          throttling:,
          # When this subscription was last updated. Formatted as milliseconds from the
          # [Unix epoch](#).
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              target_url: String,
              throttling: HubspotSDK::Webhooks::ThrottlingSettings,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
