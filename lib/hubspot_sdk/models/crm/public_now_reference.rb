# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicNowReference < HubspotSDK::Internal::Type::BaseModel
        # @!attribute reference_type
        #   Indicates the type of reference (NOW).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicNowReference::ReferenceType]
        required :reference_type,
                 enum: -> { HubspotSDK::Crm::PublicNowReference::ReferenceType },
                 api_name: :referenceType

        # @!attribute hour
        #   The hour component of the current time reference.
        #
        #   @return [Integer, nil]
        optional :hour, Integer

        # @!attribute millisecond
        #   The millisecond component of the current time reference.
        #
        #   @return [Integer, nil]
        optional :millisecond, Integer

        # @!attribute minute
        #   The minute component of the current time reference.
        #
        #   @return [Integer, nil]
        optional :minute, Integer

        # @!attribute second
        #   The second component of the current time reference.
        #
        #   @return [Integer, nil]
        optional :second, Integer

        # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
        #   @param reference_type [Symbol, HubspotSDK::Models::Crm::PublicNowReference::ReferenceType] Indicates the type of reference (NOW).
        #
        #   @param hour [Integer] The hour component of the current time reference.
        #
        #   @param millisecond [Integer] The millisecond component of the current time reference.
        #
        #   @param minute [Integer] The minute component of the current time reference.
        #
        #   @param second [Integer] The second component of the current time reference.

        # Indicates the type of reference (NOW).
        #
        # @see HubspotSDK::Models::Crm::PublicNowReference#reference_type
        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          NOW = :NOW

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
