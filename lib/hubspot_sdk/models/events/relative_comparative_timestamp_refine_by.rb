# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class RelativeComparativeTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute comparison
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RelativeComparativeTimestampRefineBy::Comparison]
        required :comparison, enum: -> { HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison }

        # @!attribute time_offset
        #
        #   @return [HubSpotSDK::Models::Events::TimeOffset]
        required :time_offset, -> { HubSpotSDK::Events::TimeOffset }, api_name: :timeOffset

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RelativeComparativeTimestampRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Type }

        # @!method initialize(comparison:, time_offset:, type:)
        #   @param comparison [Symbol, HubSpotSDK::Models::Events::RelativeComparativeTimestampRefineBy::Comparison]
        #   @param time_offset [HubSpotSDK::Models::Events::TimeOffset]
        #   @param type [Symbol, HubSpotSDK::Models::Events::RelativeComparativeTimestampRefineBy::Type]

        # @see HubSpotSDK::Models::Events::RelativeComparativeTimestampRefineBy#comparison
        module Comparison
          extend HubSpotSDK::Internal::Type::Enum

          AFTER = :AFTER
          BEFORE = :BEFORE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::RelativeComparativeTimestampRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          RELATIVE_COMPARATIVE_TIMESTAMP_REFINE_BY = :RelativeComparativeTimestampRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
