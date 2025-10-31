# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Subscriptions#get_email_status
      class PublicSubscriptionStatusesResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute recipient
        #   Email address of the contact.
        #
        #   @return [String]
        required :recipient, String

        # @!attribute subscription_statuses
        #   A list of all of the contact's subscriptions statuses.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicSubscriptionStatus>]
        required :subscription_statuses,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicSubscriptionStatus] },
                 api_name: :subscriptionStatuses

        # @!method initialize(recipient:, subscription_statuses:)
        #   @param recipient [String] Email address of the contact.
        #
        #   @param subscription_statuses [Array<HubspotSDK::Models::Marketing::PublicSubscriptionStatus>] A list of all of the contact's subscriptions statuses.
      end
    end
  end
end
