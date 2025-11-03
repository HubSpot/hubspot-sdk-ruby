# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Limits#get_custom_property_limits
      class CustomPropertyLimitResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute by_object_type
        #
        #   @return [Array<HubspotSDK::Models::Crm::LimitAndUsageForObjectType>]
        required :by_object_type,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::LimitAndUsageForObjectType] },
                 api_name: :byObjectType

        # @!attribute overall_limit
        #
        #   @return [Integer]
        required :overall_limit, Integer, api_name: :overallLimit

        # @!attribute overall_percentage
        #
        #   @return [Float]
        required :overall_percentage, Float, api_name: :overallPercentage

        # @!attribute overall_usage
        #
        #   @return [Integer]
        required :overall_usage, Integer, api_name: :overallUsage

        # @!method initialize(by_object_type:, overall_limit:, overall_percentage:, overall_usage:)
        #   @param by_object_type [Array<HubspotSDK::Models::Crm::LimitAndUsageForObjectType>]
        #   @param overall_limit [Integer]
        #   @param overall_percentage [Float]
        #   @param overall_usage [Integer]
      end
    end
  end
end
