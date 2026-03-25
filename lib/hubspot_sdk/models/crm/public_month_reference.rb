# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicMonthReference < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day
        #   The day component of the month reference.
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute reference_type
        #   Indicates the type of reference, (MONTH).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicMonthReference::ReferenceType]
        required :reference_type,
                 enum: -> { HubspotSDK::Crm::PublicMonthReference::ReferenceType },
                 api_name: :referenceType

        # @!attribute hour
        #   The hour component of the month reference.
        #
        #   @return [Integer, nil]
        optional :hour, Integer

        # @!attribute millisecond
        #   The millisecond component of the month reference.
        #
        #   @return [Integer, nil]
        optional :millisecond, Integer

        # @!attribute minute
        #   The minute component of the month reference.
        #
        #   @return [Integer, nil]
        optional :minute, Integer

        # @!attribute second
        #   The second component of the month reference.
        #
        #   @return [Integer, nil]
        optional :second, Integer

        # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
        #   @param day [Integer] The day component of the month reference.
        #
        #   @param reference_type [Symbol, HubspotSDK::Models::Crm::PublicMonthReference::ReferenceType] Indicates the type of reference, (MONTH).
        #
        #   @param hour [Integer] The hour component of the month reference.
        #
        #   @param millisecond [Integer] The millisecond component of the month reference.
        #
        #   @param minute [Integer] The minute component of the month reference.
        #
        #   @param second [Integer] The second component of the month reference.

        # Indicates the type of reference, (MONTH).
        #
        # @see HubspotSDK::Models::Crm::PublicMonthReference#reference_type
        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          MONTH = :MONTH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
