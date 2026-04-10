# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class NowReference < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute reference_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::NowReference::ReferenceType]
        required :reference_type,
                 enum: -> { HubSpotSDK::Events::NowReference::ReferenceType },
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

        # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
        #   @param reference_type [Symbol, HubSpotSDK::Models::Events::NowReference::ReferenceType]
        #   @param hour [Integer]
        #   @param millisecond [Integer]
        #   @param minute [Integer]
        #   @param second [Integer]

        # @see HubSpotSDK::Models::Events::NowReference#reference_type
        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          NOW = :NOW

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
