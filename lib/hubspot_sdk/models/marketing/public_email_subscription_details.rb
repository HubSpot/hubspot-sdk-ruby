# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailSubscriptionDetails < HubspotSDK::Internal::Type::BaseModel
        # @!attribute office_location_id
        #   ID of the selected office location.
        #
        #   @return [String, nil]
        optional :office_location_id, String, api_name: :officeLocationId

        # @!attribute preferences_group_id
        #
        #   @return [String, nil]
        optional :preferences_group_id, String, api_name: :preferencesGroupId

        # @!attribute subscription_id
        #   ID of the subscription.
        #
        #   @return [String, nil]
        optional :subscription_id, String, api_name: :subscriptionId

        # @!attribute subscription_name
        #
        #   @return [String, nil]
        optional :subscription_name, String, api_name: :subscriptionName

        # @!method initialize(office_location_id: nil, preferences_group_id: nil, subscription_id: nil, subscription_name: nil)
        #   Data structure representing the subscription fields of the email.
        #
        #   @param office_location_id [String] ID of the selected office location.
        #
        #   @param preferences_group_id [String]
        #
        #   @param subscription_id [String] ID of the subscription.
        #
        #   @param subscription_name [String]
      end
    end
  end
end
