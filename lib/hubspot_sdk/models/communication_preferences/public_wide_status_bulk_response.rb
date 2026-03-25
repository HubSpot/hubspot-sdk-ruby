# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      class PublicWideStatusBulkResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute subscriber_id_string
        #   The contact's email address.
        #
        #   @return [String]
        required :subscriber_id_string, String, api_name: :subscriberIdString

        # @!attribute wide_statuses
        #   An array containing the wide status results for the operation.
        #
        #   @return [Array<HubspotSDK::Models::CommunicationPreferences::PublicWideStatus>]
        required :wide_statuses,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicWideStatus]
                 },
                 api_name: :wideStatuses

        # @!method initialize(subscriber_id_string:, wide_statuses:)
        #   @param subscriber_id_string [String] The contact's email address.
        #
        #   @param wide_statuses [Array<HubspotSDK::Models::CommunicationPreferences::PublicWideStatus>] An array containing the wide status results for the operation.
      end
    end
  end
end
