# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      class PublicBulkOptOutFromAllResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute subscriber_id_string
        #   The email address of the contact.
        #
        #   @return [String]
        required :subscriber_id_string, String, api_name: :subscriberIdString

        # @!attribute statuses
        #   An array of subscription status objects for the contact.
        #
        #   @return [Array<HubspotSDK::Models::CommunicationPreferences::PublicStatus>, nil]
        optional :statuses,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicStatus] }

        # @!method initialize(subscriber_id_string:, statuses: nil)
        #   @param subscriber_id_string [String] The email address of the contact.
        #
        #   @param statuses [Array<HubspotSDK::Models::CommunicationPreferences::PublicStatus>] An array of subscription status objects for the contact.
      end
    end
  end
end
