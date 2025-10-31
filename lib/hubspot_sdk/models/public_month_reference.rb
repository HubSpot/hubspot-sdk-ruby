# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicMonthReference < HubspotSDK::Internal::Type::BaseModel
      # @!attribute day
      #
      #   @return [Integer]
      required :day, Integer

      # @!attribute reference_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicMonthReference::ReferenceType]
      required :reference_type,
               enum: -> { HubspotSDK::PublicMonthReference::ReferenceType },
               api_name: :referenceType

      # @!attribute hour
      #
      #   @return [Integer, nil]
      optional :hour, Integer

      # @!attribute millisecond
      #
      #   @return [Integer, nil]
      optional :millisecond, Integer

      # @!attribute minute
      #
      #   @return [Integer, nil]
      optional :minute, Integer

      # @!attribute second
      #
      #   @return [Integer, nil]
      optional :second, Integer

      # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
      #   @param day [Integer]
      #   @param reference_type [Symbol, HubspotSDK::Models::PublicMonthReference::ReferenceType]
      #   @param hour [Integer]
      #   @param millisecond [Integer]
      #   @param minute [Integer]
      #   @param second [Integer]

      # @see HubspotSDK::Models::PublicMonthReference#reference_type
      module ReferenceType
        extend HubspotSDK::Internal::Type::Enum

        MONTH = :MONTH

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
