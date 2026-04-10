# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class Filter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute conditions
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::Condition>]
        required :conditions, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::Condition] }

        # @!method initialize(conditions:)
        #   Defines a single condition for searching CRM objects, specifying the property to
        #   filter on, the operator to use (such as equals, greater than, or contains), and
        #   the value(s) to compare against.
        #
        #   @param conditions [Array<HubSpotSDK::Models::Webhooks::Condition>]
      end
    end
  end
end
