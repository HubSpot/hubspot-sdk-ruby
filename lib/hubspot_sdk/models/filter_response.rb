# frozen_string_literal: true

module HubSpotSDK
  module Models
    class FilterResponse < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the filter. It is an integer in int64 format.
      #
      #   @return [Integer]
      required :id, Integer

      # @!attribute created_at
      #   A Unix timestamp in milliseconds indicating when the filter was created.
      #
      #   @return [Integer]
      required :created_at, Integer, api_name: :createdAt

      # @!attribute filter
      #   Defines a single condition for searching CRM objects, specifying the property to
      #   filter on, the operator to use (such as equals, greater than, or contains), and
      #   the value(s) to compare against.
      #
      #   @return [HubSpotSDK::Models::Filter]
      required :filter, -> { HubSpotSDK::Filter }

      # @!method initialize(id:, created_at:, filter:)
      #   Some parameter documentations has been truncated, see
      #   {HubSpotSDK::Models::FilterResponse} for more details.
      #
      #   @param id [Integer] The unique identifier for the filter. It is an integer in int64 format.
      #
      #   @param created_at [Integer] A Unix timestamp in milliseconds indicating when the filter was created.
      #
      #   @param filter [HubSpotSDK::Models::Filter] Defines a single condition for searching CRM objects, specifying the property to
    end
  end
end
