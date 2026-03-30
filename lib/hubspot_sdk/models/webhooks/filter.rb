# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class Filter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute conditions
        #
        #   @return [Array<HubspotSDK::Models::Webhooks::Condition>]
        required :conditions, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::Condition] }

        # @!method initialize(conditions:)
        #   Defines a single condition for searching CRM objects, specifying the property to
        #   filter on, the operator to use (such as equals, greater than, or contains), and
        #   the value(s) to compare against.
        #
        #   @param conditions [Array<HubspotSDK::Models::Webhooks::Condition>]
      end
    end
  end
end
