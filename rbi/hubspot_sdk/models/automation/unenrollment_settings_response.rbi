# typed: strong

module HubspotSDK
  module Models
    module Automation
      class UnenrollmentSettingsResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::UnenrollmentSettingsResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Automation::EmailSettingsResponse) }
        attr_reader :email_settings

        sig do
          params(
            email_settings:
              HubspotSDK::Automation::EmailSettingsResponse::OrHash
          ).void
        end
        attr_writer :email_settings

        sig { returns(HubspotSDK::Automation::MeetingSettingsResponse) }
        attr_reader :meeting_settings

        sig do
          params(
            meeting_settings:
              HubspotSDK::Automation::MeetingSettingsResponse::OrHash
          ).void
        end
        attr_writer :meeting_settings

        sig do
          params(
            email_settings:
              HubspotSDK::Automation::EmailSettingsResponse::OrHash,
            meeting_settings:
              HubspotSDK::Automation::MeetingSettingsResponse::OrHash
          ).returns(T.attached_class)
        end
        def self.new(email_settings:, meeting_settings:)
        end

        sig do
          override.returns(
            {
              email_settings: HubspotSDK::Automation::EmailSettingsResponse,
              meeting_settings: HubspotSDK::Automation::MeetingSettingsResponse
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
