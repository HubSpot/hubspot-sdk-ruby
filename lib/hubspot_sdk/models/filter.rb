# frozen_string_literal: true

module HubSpotSDK
  module Models
    class Filter < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute conditions
      #   An array of conditions that define the criteria for the filter. Each condition
      #   specifies a property, an operator, and optionally a value or values.
      #
      #   @return [Array<HubSpotSDK::Models::Condition>]
      required :conditions, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Condition] }

      # @!method initialize(conditions:)
      #   Some parameter documentations has been truncated, see
      #   {HubSpotSDK::Models::Filter} for more details.
      #
      #   Defines a single condition for searching CRM objects, specifying the property to
      #   filter on, the operator to use (such as equals, greater than, or contains), and
      #   the value(s) to compare against.
      #
      #   @param conditions [Array<HubSpotSDK::Models::Condition>] An array of conditions that define the criteria for the filter. Each condition s
    end
  end
end
