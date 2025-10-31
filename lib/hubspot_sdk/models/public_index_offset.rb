# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicIndexOffset < HubspotSDK::Internal::Type::BaseModel
      # @!attribute days
      #
      #   @return [Integer, nil]
      optional :days, Integer

      # @!attribute hours
      #
      #   @return [Integer, nil]
      optional :hours, Integer

      # @!attribute milliseconds
      #
      #   @return [Integer, nil]
      optional :milliseconds, Integer

      # @!attribute minutes
      #
      #   @return [Integer, nil]
      optional :minutes, Integer

      # @!attribute months
      #
      #   @return [Integer, nil]
      optional :months, Integer

      # @!attribute quarters
      #
      #   @return [Integer, nil]
      optional :quarters, Integer

      # @!attribute seconds
      #
      #   @return [Integer, nil]
      optional :seconds, Integer

      # @!attribute weeks
      #
      #   @return [Integer, nil]
      optional :weeks, Integer

      # @!attribute years
      #
      #   @return [Integer, nil]
      optional :years, Integer

      # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
      #   @param days [Integer]
      #   @param hours [Integer]
      #   @param milliseconds [Integer]
      #   @param minutes [Integer]
      #   @param months [Integer]
      #   @param quarters [Integer]
      #   @param seconds [Integer]
      #   @param weeks [Integer]
      #   @param years [Integer]
    end
  end
end
