# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class RelativeComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute comparison
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy::Comparison]
        required :comparison, enum: -> { HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison }

        # @!attribute time_offset
        #
        #   @return [HubspotSDK::Models::Events::TimeOffset]
        required :time_offset, -> { HubspotSDK::Events::TimeOffset }, api_name: :timeOffset

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Type }

        # @!method initialize(comparison:, time_offset:, type:)
        #   @param comparison [Symbol, HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy::Comparison]
        #   @param time_offset [HubspotSDK::Models::Events::TimeOffset]
        #   @param type [Symbol, HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy::Type]

        # @see HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy#comparison
        module Comparison
          extend HubspotSDK::Internal::Type::Enum

          AFTER = :AFTER
          BEFORE = :BEFORE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          RELATIVE_COMPARATIVE_TIMESTAMP_REFINE_BY = :RelativeComparativeTimestampRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
