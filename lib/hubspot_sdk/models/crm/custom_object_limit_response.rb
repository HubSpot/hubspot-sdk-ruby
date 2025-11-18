# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Limits#get_custom_object_type_limits
      class CustomObjectLimitResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute limit
        #   The maximum number of custom objects allowed.
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute percentage
        #   The percentage of the custom object limit that is currently used.
        #
        #   @return [Float]
        required :percentage, Float

        # @!attribute usage
        #   The current number of custom objects used.
        #
        #   @return [Integer]
        required :usage, Integer

        # @!method initialize(limit:, percentage:, usage:)
        #   @param limit [Integer] The maximum number of custom objects allowed.
        #
        #   @param percentage [Float] The percentage of the custom object limit that is currently used.
        #
        #   @param usage [Integer] The current number of custom objects used.
      end
    end
  end
end
