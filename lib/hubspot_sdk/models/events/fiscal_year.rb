# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class FiscalYear < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute day
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute month
        #
        #   @return [Integer]
        required :month, Integer

        # @!attribute reference_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::FiscalYear::ReferenceType]
        required :reference_type,
                 enum: -> { HubSpotSDK::Events::FiscalYear::ReferenceType },
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

        # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
        #   @param day [Integer]
        #   @param month [Integer]
        #   @param reference_type [Symbol, HubSpotSDK::Models::Events::FiscalYear::ReferenceType]
        #   @param hour [Integer]
        #   @param millisecond [Integer]
        #   @param minute [Integer]
        #   @param second [Integer]

        # @see HubSpotSDK::Models::Events::FiscalYear#reference_type
        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          FISCAL_YEAR = :FISCAL_YEAR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
