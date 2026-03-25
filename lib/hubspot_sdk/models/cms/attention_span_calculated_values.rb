# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class AttentionSpanCalculatedValues < HubspotSDK::Internal::Type::BaseModel
        # @!attribute total_percent_played
        #
        #   @return [Float]
        required :total_percent_played, Float, api_name: :totalPercentPlayed

        # @!attribute total_seconds_played
        #
        #   @return [Integer]
        required :total_seconds_played, Integer, api_name: :totalSecondsPlayed

        # @!method initialize(total_percent_played:, total_seconds_played:)
        #   @param total_percent_played [Float]
        #   @param total_seconds_played [Integer]
      end
    end
  end
end
