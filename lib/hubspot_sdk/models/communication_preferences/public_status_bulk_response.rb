# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class PublicStatusBulkResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute statuses
        #   An array of subscription status objects for the contact.
        #
        #   @return [Array<HubSpotSDK::Models::CommunicationPreferences::PublicStatus>]
        required :statuses,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicStatus] }

        # @!attribute subscriber_id_string
        #   The email address of the contact.
        #
        #   @return [String]
        required :subscriber_id_string, String, api_name: :subscriberIdString

        # @!method initialize(statuses:, subscriber_id_string:)
        #   @param statuses [Array<HubSpotSDK::Models::CommunicationPreferences::PublicStatus>] An array of subscription status objects for the contact.
        #
        #   @param subscriber_id_string [String] The email address of the contact.
      end
    end
  end
end
