# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicTodayReference < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute reference_type
        #   Indicates the type of reference (TODAY).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicTodayReference::ReferenceType]
        required :reference_type,
                 enum: -> { HubSpotSDK::Crm::PublicTodayReference::ReferenceType },
                 api_name: :referenceType

        # @!attribute hour
        #   The hour component of the current day reference.
        #
        #   @return [Integer, nil]
        optional :hour, Integer

        # @!attribute millisecond
        #   The millisecond component of the current day reference.
        #
        #   @return [Integer, nil]
        optional :millisecond, Integer

        # @!attribute minute
        #   The minute component of the current day reference.
        #
        #   @return [Integer, nil]
        optional :minute, Integer

        # @!attribute second
        #   The second component of the current day reference.
        #
        #   @return [Integer, nil]
        optional :second, Integer

        # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
        #   @param reference_type [Symbol, HubSpotSDK::Models::Crm::PublicTodayReference::ReferenceType] Indicates the type of reference (TODAY).
        #
        #   @param hour [Integer] The hour component of the current day reference.
        #
        #   @param millisecond [Integer] The millisecond component of the current day reference.
        #
        #   @param minute [Integer] The minute component of the current day reference.
        #
        #   @param second [Integer] The second component of the current day reference.

        # Indicates the type of reference (TODAY).
        #
        # @see HubSpotSDK::Models::Crm::PublicTodayReference#reference_type
        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          TODAY = :TODAY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
