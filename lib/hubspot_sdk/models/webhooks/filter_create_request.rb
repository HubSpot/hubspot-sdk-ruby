# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class FilterCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter
        #   Defines a single condition for searching CRM objects, specifying the property to
        #   filter on, the operator to use (such as equals, greater than, or contains), and
        #   the value(s) to compare against.
        #
        #   @return [HubSpotSDK::Models::Webhooks::Filter]
        required :filter, -> { HubSpotSDK::Webhooks::Filter }

        # @!attribute subscription_id
        #   The unique identifier of the subscription to which the filter will be applied.
        #   It is an integer formatted as int64.
        #
        #   @return [Integer]
        required :subscription_id, Integer, api_name: :subscriptionId

        # @!method initialize(filter:, subscription_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::FilterCreateRequest} for more details.
        #
        #   @param filter [HubSpotSDK::Models::Webhooks::Filter] Defines a single condition for searching CRM objects, specifying the property to
        #
        #   @param subscription_id [Integer] The unique identifier of the subscription to which the filter will be applied. I
      end
    end
  end
end
