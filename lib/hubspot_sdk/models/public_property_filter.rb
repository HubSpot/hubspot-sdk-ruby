# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicPropertyFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicPropertyFilter::FilterType]
      required :filter_type, enum: -> { HubspotSDK::PublicPropertyFilter::FilterType }, api_name: :filterType

      # @!attribute operation
      #
      #   @return [HubspotSDK::Models::PublicBoolPropertyOperation, HubspotSDK::Models::PublicNumberPropertyOperation, HubspotSDK::Models::PublicStringPropertyOperation, HubspotSDK::Models::PublicDateTimePropertyOperation, HubspotSDK::Models::PublicRangedDatePropertyOperation, HubspotSDK::Models::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::PublicComparativeDatePropertyOperation, HubspotSDK::Models::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::PublicEnumerationPropertyOperation, HubspotSDK::Models::PublicAllPropertyTypesOperation, HubspotSDK::Models::PublicRangedNumberPropertyOperation, HubspotSDK::Models::PublicMultiStringPropertyOperation, HubspotSDK::Models::PublicDatePropertyOperation, HubspotSDK::Models::PublicCalendarDatePropertyOperation, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      required :operation, union: -> { HubspotSDK::PublicPropertyFilter::Operation }

      # @!attribute property
      #
      #   @return [String]
      required :property, String

      # @!method initialize(filter_type:, operation:, property:)
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicPropertyFilter::FilterType]
      #   @param operation [HubspotSDK::Models::PublicBoolPropertyOperation, HubspotSDK::Models::PublicNumberPropertyOperation, HubspotSDK::Models::PublicStringPropertyOperation, HubspotSDK::Models::PublicDateTimePropertyOperation, HubspotSDK::Models::PublicRangedDatePropertyOperation, HubspotSDK::Models::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::PublicComparativeDatePropertyOperation, HubspotSDK::Models::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::PublicEnumerationPropertyOperation, HubspotSDK::Models::PublicAllPropertyTypesOperation, HubspotSDK::Models::PublicRangedNumberPropertyOperation, HubspotSDK::Models::PublicMultiStringPropertyOperation, HubspotSDK::Models::PublicDatePropertyOperation, HubspotSDK::Models::PublicCalendarDatePropertyOperation, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      #   @param property [String]

      # @see HubspotSDK::Models::PublicPropertyFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        PROPERTY = :PROPERTY

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubspotSDK::Models::PublicPropertyFilter#operation
      module Operation
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicBoolPropertyOperation }

        variant -> { HubspotSDK::PublicNumberPropertyOperation }

        variant -> { HubspotSDK::PublicStringPropertyOperation }

        variant -> { HubspotSDK::PublicDateTimePropertyOperation }

        variant -> { HubspotSDK::PublicRangedDatePropertyOperation }

        variant -> { HubspotSDK::PublicComparativePropertyUpdatedOperation }

        variant -> { HubspotSDK::PublicComparativeDatePropertyOperation }

        variant -> { HubspotSDK::PublicRollingDateRangePropertyOperation }

        variant -> { HubspotSDK::PublicRollingPropertyUpdatedOperation }

        variant -> { HubspotSDK::PublicEnumerationPropertyOperation }

        variant -> { HubspotSDK::PublicAllPropertyTypesOperation }

        variant -> { HubspotSDK::PublicRangedNumberPropertyOperation }

        variant -> { HubspotSDK::PublicMultiStringPropertyOperation }

        variant -> { HubspotSDK::PublicDatePropertyOperation }

        variant -> { HubspotSDK::PublicCalendarDatePropertyOperation }

        variant -> { HubspotSDK::PublicTimePointOperation }

        variant -> { HubspotSDK::PublicRangedTimeOperation }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicBoolPropertyOperation, HubspotSDK::Models::PublicNumberPropertyOperation, HubspotSDK::Models::PublicStringPropertyOperation, HubspotSDK::Models::PublicDateTimePropertyOperation, HubspotSDK::Models::PublicRangedDatePropertyOperation, HubspotSDK::Models::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::PublicComparativeDatePropertyOperation, HubspotSDK::Models::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::PublicEnumerationPropertyOperation, HubspotSDK::Models::PublicAllPropertyTypesOperation, HubspotSDK::Models::PublicRangedNumberPropertyOperation, HubspotSDK::Models::PublicMultiStringPropertyOperation, HubspotSDK::Models::PublicDatePropertyOperation, HubspotSDK::Models::PublicCalendarDatePropertyOperation, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation)]
      end
    end
  end
end
