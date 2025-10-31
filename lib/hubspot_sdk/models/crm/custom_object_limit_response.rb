# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Limits#get_custom_object_type_limits
      class CustomObjectLimitResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute limit
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute percentage
        #
        #   @return [Float]
        required :percentage, Float

        # @!attribute usage
        #
        #   @return [Integer]
        required :usage, Integer

        # @!method initialize(limit:, percentage:, usage:)
        #   @param limit [Integer]
        #   @param percentage [Float]
        #   @param usage [Integer]
      end
    end
  end
end
