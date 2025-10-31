# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Limits#get_calculated_property_limits
      class CalculatedPropertyLimitResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute by_object_type
        #
        #   @return [Array<HubspotSDK::Models::CRM::UsageForObjectType>]
        required :by_object_type,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::UsageForObjectType] },
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
        #   @param by_object_type [Array<HubspotSDK::Models::CRM::UsageForObjectType>]
        #   @param overall_limit [Integer]
        #   @param overall_percentage [Float]
        #   @param overall_usage [Integer]
      end
    end
  end
end
