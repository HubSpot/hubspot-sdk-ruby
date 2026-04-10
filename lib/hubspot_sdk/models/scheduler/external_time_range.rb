# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalTimeRange < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute end_
        #   The end time of the time range, represented as Unix time in milliseconds.
        #
        #   @return [Integer]
        required :end_, Integer, api_name: :end

        # @!attribute start
        #   The start time of the time range, represented as Unix time in milliseconds.
        #
        #   @return [Integer]
        required :start, Integer

        # @!method initialize(end_:, start:)
        #   @param end_ [Integer] The end time of the time range, represented as Unix time in milliseconds.
        #
        #   @param start [Integer] The start time of the time range, represented as Unix time in milliseconds.
      end
    end
  end
end
