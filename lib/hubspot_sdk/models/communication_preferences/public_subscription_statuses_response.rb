# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      # @see HubspotSDK::Resources::CommunicationPreferences#get_status_by_email
      class PublicSubscriptionStatusesResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute recipient
        #   The email address of the recipient for whom the subscription statuses are being
        #   retrieved. It is a string.
        #
        #   @return [String]
        required :recipient, String

        # @!attribute subscription_statuses
        #   An array of PublicSubscriptionStatus objects, each detailing the subscription
        #   status of the recipient for a particular subscription.
        #
        #   @return [Array<HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus>]
        required :subscription_statuses,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus]
                 },
                 api_name: :subscriptionStatuses

        # @!method initialize(recipient:, subscription_statuses:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatusesResponse}
        #   for more details.
        #
        #   @param recipient [String] The email address of the recipient for whom the subscription statuses are being
        #
        #   @param subscription_statuses [Array<HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus>] An array of PublicSubscriptionStatus objects, each detailing the subscription st
      end
    end
  end
end
