# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks::Webhooks#get_subscription_filter
      class FilterResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute filter
        #   Defines a single condition for searching CRM objects, specifying the property to
        #   filter on, the operator to use (such as equals, greater than, or contains), and
        #   the value(s) to compare against.
        #
        #   @return [HubspotSDK::Models::Webhooks::Filter]
        required :filter, -> { HubspotSDK::Webhooks::Filter }

        # @!method initialize(id:, created_at:, filter:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Webhooks::FilterResponse} for more details.
        #
        #   @param id [Integer]
        #
        #   @param created_at [Integer]
        #
        #   @param filter [HubspotSDK::Models::Webhooks::Filter] Defines a single condition for searching CRM objects, specifying the property to
      end
    end
  end
end
