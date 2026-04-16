# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class SettingsResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::SettingsResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The date and time when the webhook settings were created, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :created_at

        # The URL to which the webhook events will be sent. It is a string.
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

        # The date and time when the webhook settings were last updated, in ISO 8601
        # format.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            created_at: Time,
            target_url: String,
            throttling: HubSpotSDK::Webhooks::ThrottlingSettings::OrHash,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the webhook settings were created, in ISO 8601 format.
          created_at:,
          # The URL to which the webhook events will be sent. It is a string.
          target_url:,
          throttling:,
          # The date and time when the webhook settings were last updated, in ISO 8601
          # format.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              target_url: String,
              throttling: HubSpotSDK::Webhooks::ThrottlingSettings,
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
