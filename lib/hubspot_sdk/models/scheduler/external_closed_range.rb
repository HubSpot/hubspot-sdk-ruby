# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalClosedRange < HubspotSDK::Internal::Type::BaseModel
        # @!attribute end_
        #   The end value of the closed range, represented as an integer.
        #
        #   @return [Integer]
        required :end_, Integer, api_name: :end

        # @!attribute start
        #   The start value of the closed range, represented as an integer.
        #
        #   @return [Integer]
        required :start, Integer

        # @!method initialize(end_:, start:)
        #   @param end_ [Integer] The end value of the closed range, represented as an integer.
        #
        #   @param start [Integer] The start value of the closed range, represented as an integer.
      end
    end
  end
end
