# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class SettingsChangeRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::SettingsChangeRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A publicly available URL for Hubspot to call where event payloads will be
        # delivered. See [link-so-some-doc](#) for details about the format of these event
        # payloads.
        sig { returns(String) }
        attr_accessor :target_url

        sig { returns(HubSpotSDK::Webhooks::ThrottlingSettings) }
        attr_reader :throttling

        sig do
          params(
            throttling: HubSpotSDK::Webhooks::ThrottlingSettings::OrHash
          ).void
        end
        attr_writer :throttling

        sig do
          params(
            target_url: String,
            throttling: HubSpotSDK::Webhooks::ThrottlingSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A publicly available URL for Hubspot to call where event payloads will be
          # delivered. See [link-so-some-doc](#) for details about the format of these event
          # payloads.
          target_url:,
          throttling:
        )
        end

        sig do
          override.returns(
            {
              target_url: String,
              throttling: HubSpotSDK::Webhooks::ThrottlingSettings
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
