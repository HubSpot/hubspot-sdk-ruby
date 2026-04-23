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

        # The URL to which webhook events will be sent. It is a string.
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
          # The URL to which webhook events will be sent. It is a string.
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
