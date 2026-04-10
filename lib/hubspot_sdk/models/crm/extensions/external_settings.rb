# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::VideoConferencing#update
        class ExternalSettings < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute create_meeting_url
          #
          #   @return [String]
          required :create_meeting_url, String, api_name: :createMeetingUrl

          # @!attribute delete_meeting_url
          #
          #   @return [String, nil]
          optional :delete_meeting_url, String, api_name: :deleteMeetingUrl

          # @!attribute fetch_accounts_uri
          #
          #   @return [String, nil]
          optional :fetch_accounts_uri, String, api_name: :fetchAccountsUri

          # @!attribute update_meeting_url
          #
          #   @return [String, nil]
          optional :update_meeting_url, String, api_name: :updateMeetingUrl

          # @!attribute user_verify_url
          #
          #   @return [String, nil]
          optional :user_verify_url, String, api_name: :userVerifyUrl

          # @!method initialize(create_meeting_url:, delete_meeting_url: nil, fetch_accounts_uri: nil, update_meeting_url: nil, user_verify_url: nil)
          #   @param create_meeting_url [String]
          #   @param delete_meeting_url [String]
          #   @param fetch_accounts_uri [String]
          #   @param update_meeting_url [String]
          #   @param user_verify_url [String]
        end
      end
    end
  end
end
