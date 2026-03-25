# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicFiscalQuarterReference < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day
        #   The day component of the fiscal quarter reference.
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute month
        #   The month component of the fiscal quarter reference.
        #
        #   @return [Integer]
        required :month, Integer

        # @!attribute reference_type
        #   Indicates the type of reference (FISCAL_QUARTER).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicFiscalQuarterReference::ReferenceType]
        required :reference_type,
                 enum: -> { HubspotSDK::Crm::PublicFiscalQuarterReference::ReferenceType },
                 api_name: :referenceType

        # @!attribute hour
        #   The hour component of the fiscal quarter reference.
        #
        #   @return [Integer, nil]
        optional :hour, Integer

        # @!attribute millisecond
        #   The millisecond component of the fiscal quarter reference.
        #
        #   @return [Integer, nil]
        optional :millisecond, Integer

        # @!attribute minute
        #   The minute component of the fiscal quarter reference.
        #
        #   @return [Integer, nil]
        optional :minute, Integer

        # @!attribute second
        #   The second component of the fiscal quarter reference.
        #
        #   @return [Integer, nil]
        optional :second, Integer

        # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
        #   @param day [Integer] The day component of the fiscal quarter reference.
        #
        #   @param month [Integer] The month component of the fiscal quarter reference.
        #
        #   @param reference_type [Symbol, HubspotSDK::Models::Crm::PublicFiscalQuarterReference::ReferenceType] Indicates the type of reference (FISCAL_QUARTER).
        #
        #   @param hour [Integer] The hour component of the fiscal quarter reference.
        #
        #   @param millisecond [Integer] The millisecond component of the fiscal quarter reference.
        #
        #   @param minute [Integer] The minute component of the fiscal quarter reference.
        #
        #   @param second [Integer] The second component of the fiscal quarter reference.

        # Indicates the type of reference (FISCAL_QUARTER).
        #
        # @see HubspotSDK::Models::Crm::PublicFiscalQuarterReference#reference_type
        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          FISCAL_QUARTER = :FISCAL_QUARTER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
