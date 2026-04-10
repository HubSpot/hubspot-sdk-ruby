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
        #
        #   @return [Integer]
        required :subscription_id, Integer, api_name: :subscriptionId

        # @!method initialize(filter:, subscription_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::FilterCreateRequest} for more details.
        #
        #   @param filter [HubSpotSDK::Models::Webhooks::Filter] Defines a single condition for searching CRM objects, specifying the property to
        #
        #   @param subscription_id [Integer]
      end
    end
  end
end
