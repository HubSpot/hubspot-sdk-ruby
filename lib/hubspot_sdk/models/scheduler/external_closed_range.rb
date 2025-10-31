# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalClosedRange < HubspotSDK::Internal::Type::BaseModel
        # @!attribute end_
        #
        #   @return [Integer]
        required :end_, Integer, api_name: :end

        # @!attribute start
        #
        #   @return [Integer]
        required :start, Integer

        # @!method initialize(end_:, start:)
        #   @param end_ [Integer]
        #   @param start [Integer]
      end
    end
  end
end
