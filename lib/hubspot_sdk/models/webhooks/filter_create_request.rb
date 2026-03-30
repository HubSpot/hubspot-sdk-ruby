# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class FilterCreateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter
        #   Defines a single condition for searching CRM objects, specifying the property to
        #   filter on, the operator to use (such as equals, greater than, or contains), and
        #   the value(s) to compare against.
        #
        #   @return [HubspotSDK::Models::Webhooks::Filter]
        required :filter, -> { HubspotSDK::Webhooks::Filter }

        # @!attribute subscription_id
        #
        #   @return [Integer]
        required :subscription_id, Integer, api_name: :subscriptionId

        # @!method initialize(filter:, subscription_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Webhooks::FilterCreateRequest} for more details.
        #
        #   @param filter [HubspotSDK::Models::Webhooks::Filter] Defines a single condition for searching CRM objects, specifying the property to
        #
        #   @param subscription_id [Integer]
      end
    end
  end
end
