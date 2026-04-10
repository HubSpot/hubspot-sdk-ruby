# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicQuarterReference < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute day
        #   The day component of the quarter reference.
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute month
        #   The month component of the quarter reference.
        #
        #   @return [Integer]
        required :month, Integer

        # @!attribute reference_type
        #   Indicates the type of reference (QUARTER).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicQuarterReference::ReferenceType]
        required :reference_type,
                 enum: -> { HubSpotSDK::Crm::PublicQuarterReference::ReferenceType },
                 api_name: :referenceType

        # @!attribute hour
        #   The hour component of the quarter reference.
        #
        #   @return [Integer, nil]
        optional :hour, Integer

        # @!attribute millisecond
        #   The millisecond component of the quarter reference.
        #
        #   @return [Integer, nil]
        optional :millisecond, Integer

        # @!attribute minute
        #   The minute component of the quarter reference.
        #
        #   @return [Integer, nil]
        optional :minute, Integer

        # @!attribute second
        #   The second component of the quarter reference.
        #
        #   @return [Integer, nil]
        optional :second, Integer

        # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
        #   @param day [Integer] The day component of the quarter reference.
        #
        #   @param month [Integer] The month component of the quarter reference.
        #
        #   @param reference_type [Symbol, HubSpotSDK::Models::Crm::PublicQuarterReference::ReferenceType] Indicates the type of reference (QUARTER).
        #
        #   @param hour [Integer] The hour component of the quarter reference.
        #
        #   @param millisecond [Integer] The millisecond component of the quarter reference.
        #
        #   @param minute [Integer] The minute component of the quarter reference.
        #
        #   @param second [Integer] The second component of the quarter reference.

        # Indicates the type of reference (QUARTER).
        #
        # @see HubSpotSDK::Models::Crm::PublicQuarterReference#reference_type
        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          QUARTER = :QUARTER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
