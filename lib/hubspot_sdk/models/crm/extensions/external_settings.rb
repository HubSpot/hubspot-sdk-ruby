# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ExternalSettings < HubspotSDK::Internal::Type::BaseModel
          # @!attribute create_meeting_url
          #   The URL that HubSpot will send requests to create a new video conference.
          #
          #   @return [String]
          required :create_meeting_url, String, api_name: :createMeetingUrl

          # @!attribute delete_meeting_url
          #   The URL that HubSpot will send notifications of meetings that have been deleted
          #   in HubSpot.
          #
          #   @return [String, nil]
          optional :delete_meeting_url, String, api_name: :deleteMeetingUrl

          # @!attribute fetch_accounts_uri
          #
          #   @return [String, nil]
          optional :fetch_accounts_uri, String, api_name: :fetchAccountsUri

          # @!attribute update_meeting_url
          #   The URL that HubSpot will send updates to existing meetings. Typically called
          #   when the user changes the topic or times of a meeting.
          #
          #   @return [String, nil]
          optional :update_meeting_url, String, api_name: :updateMeetingUrl

          # @!attribute user_verify_url
          #   The URL that HubSpot will use to verify that a user exists in the video
          #   conference application.
          #
          #   @return [String, nil]
          optional :user_verify_url, String, api_name: :userVerifyUrl

          # @!method initialize(create_meeting_url:, delete_meeting_url: nil, fetch_accounts_uri: nil, update_meeting_url: nil, user_verify_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Extensions::ExternalSettings} for more details.
          #
          #   The URLs of the various actions provided by the video conferencing application.
          #   All URLs must use the `https` protocol.
          #
          #   @param create_meeting_url [String] The URL that HubSpot will send requests to create a new video conference.
          #
          #   @param delete_meeting_url [String] The URL that HubSpot will send notifications of meetings that have been deleted
          #
          #   @param fetch_accounts_uri [String]
          #
          #   @param update_meeting_url [String] The URL that HubSpot will send updates to existing meetings. Typically called wh
          #
          #   @param user_verify_url [String] The URL that HubSpot will use to verify that a user exists in the video conferen
        end
      end
    end
  end
end
