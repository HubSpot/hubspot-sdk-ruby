# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Limits#get_custom_property_limits
      class CustomPropertyLimitResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute by_object_type
        #
        #   @return [Array<HubSpotSDK::Models::Crm::LimitAndUsageForObjectType>]
        required :by_object_type,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::LimitAndUsageForObjectType] },
                 api_name: :byObjectType

        # @!attribute overall_limit
        #   The total limit for custom properties across all objects.
        #
        #   @return [Integer]
        required :overall_limit, Integer, api_name: :overallLimit

        # @!attribute overall_percentage
        #   The percentage of the overall custom property limit that has been used.
        #
        #   @return [Float]
        required :overall_percentage, Float, api_name: :overallPercentage

        # @!attribute overall_usage
        #   The total number of custom properties currently in use across all objects.
        #
        #   @return [Integer]
        required :overall_usage, Integer, api_name: :overallUsage

        # @!method initialize(by_object_type:, overall_limit:, overall_percentage:, overall_usage:)
        #   @param by_object_type [Array<HubSpotSDK::Models::Crm::LimitAndUsageForObjectType>]
        #
        #   @param overall_limit [Integer] The total limit for custom properties across all objects.
        #
        #   @param overall_percentage [Float] The percentage of the overall custom property limit that has been used.
        #
        #   @param overall_usage [Integer] The total number of custom properties currently in use across all objects.
      end
    end
  end
end
