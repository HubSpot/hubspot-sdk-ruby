# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class UnenrollmentSettingsResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email_settings
        #
        #   @return [HubspotSDK::Models::Automation::EmailSettingsResponse]
        required :email_settings,
                 -> {
                   HubspotSDK::Automation::EmailSettingsResponse
                 },
                 api_name: :emailSettings

        # @!attribute meeting_settings
        #
        #   @return [HubspotSDK::Models::Automation::MeetingSettingsResponse]
        required :meeting_settings,
                 -> { HubspotSDK::Automation::MeetingSettingsResponse },
                 api_name: :meetingSettings

        # @!method initialize(email_settings:, meeting_settings:)
        #   @param email_settings [HubspotSDK::Models::Automation::EmailSettingsResponse]
        #   @param meeting_settings [HubspotSDK::Models::Automation::MeetingSettingsResponse]
      end
    end
  end
end
