# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class Filter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute conditions
        #   An array of conditions that define the filter criteria. Each condition specifies
        #   a property, operator, and value to determine if a data item meets the filter
        #   requirements.
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::Condition>]
        required :conditions, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::Condition] }

        # @!method initialize(conditions:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::Filter} for more details.
        #
        #   Defines a single condition for searching CRM objects, specifying the property to
        #   filter on, the operator to use (such as equals, greater than, or contains), and
        #   the value(s) to compare against.
        #
        #   @param conditions [Array<HubSpotSDK::Models::Webhooks::Condition>] An array of conditions that define the filter criteria. Each condition specifies
      end
    end
  end
end
