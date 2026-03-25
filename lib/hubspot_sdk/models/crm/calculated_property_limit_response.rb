# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Limits#get_calculated_property_limits
      class CalculatedPropertyLimitResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute by_object_type
        #
        #   @return [Array<HubspotSDK::Models::Crm::UsageForObjectType>]
        required :by_object_type,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::UsageForObjectType] },
                 api_name: :byObjectType

        # @!attribute overall_limit
        #   The maximum number of calculated properties allowed.
        #
        #   @return [Integer]
        required :overall_limit, Integer, api_name: :overallLimit

        # @!attribute overall_percentage
        #   The percentage of the overall limit that is currently being used for calculated
        #   properties.
        #
        #   @return [Float]
        required :overall_percentage, Float, api_name: :overallPercentage

        # @!attribute overall_usage
        #   The total number of calculated properties currently in use.
        #
        #   @return [Integer]
        required :overall_usage, Integer, api_name: :overallUsage

        # @!method initialize(by_object_type:, overall_limit:, overall_percentage:, overall_usage:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::CalculatedPropertyLimitResponse} for more details.
        #
        #   @param by_object_type [Array<HubspotSDK::Models::Crm::UsageForObjectType>]
        #
        #   @param overall_limit [Integer] The maximum number of calculated properties allowed.
        #
        #   @param overall_percentage [Float] The percentage of the overall limit that is currently being used for calculated
        #
        #   @param overall_usage [Integer] The total number of calculated properties currently in use.
      end
    end
  end
end
