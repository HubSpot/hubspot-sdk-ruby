# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APITimeOfDay < HubspotSDK::Internal::Type::BaseModel
        # @!attribute hour
        #
        #   @return [Integer]
        required :hour, Integer

        # @!attribute minute
        #
        #   @return [Integer]
        required :minute, Integer

        # @!method initialize(hour:, minute:)
        #   @param hour [Integer]
        #   @param minute [Integer]
      end
    end
  end
end
