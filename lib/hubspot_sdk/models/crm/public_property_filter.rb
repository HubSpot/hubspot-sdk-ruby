# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Indicates that the filter (PROPERTY).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicPropertyFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicPropertyFilter::FilterType },
                 api_name: :filterType

        # @!attribute operation
        #   Defines the operation to be performed on the property, such as comparison or
        #   value matching.
        #
        #   @return [HubspotSDK::Models::Crm::PublicBoolPropertyOperation, HubspotSDK::Models::Crm::PublicNumberPropertyOperation, HubspotSDK::Models::Crm::PublicStringPropertyOperation, HubspotSDK::Models::Crm::PublicDateTimePropertyOperation, HubspotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubspotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubspotSDK::Models::Crm::PublicDatePropertyOperation, HubspotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation]
        required :operation, union: -> { HubspotSDK::Crm::PublicPropertyFilter::Operation }

        # @!attribute property
        #   Specifies the name of the property that the filter is applied to.
        #
        #   @return [String]
        required :property, String

        # @!method initialize(filter_type:, operation:, property:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicPropertyFilter} for more details.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicPropertyFilter::FilterType] Indicates that the filter (PROPERTY).
        #
        #   @param operation [HubspotSDK::Models::Crm::PublicBoolPropertyOperation, HubspotSDK::Models::Crm::PublicNumberPropertyOperation, HubspotSDK::Models::Crm::PublicStringPropertyOperation, HubspotSDK::Models::Crm::PublicDateTimePropertyOperation, HubspotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubspotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubspotSDK::Models::Crm::PublicDatePropertyOperation, HubspotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Defines the operation to be performed on the property, such as comparison or val
        #
        #   @param property [String] Specifies the name of the property that the filter is applied to.

        # Indicates that the filter (PROPERTY).
        #
        # @see HubspotSDK::Models::Crm::PublicPropertyFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          PROPERTY = :PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines the operation to be performed on the property, such as comparison or
        # value matching.
        #
        # @see HubspotSDK::Models::Crm::PublicPropertyFilter#operation
        module Operation
          extend HubspotSDK::Internal::Type::Union

          discriminator :operationType

          variant :BOOL, -> { HubspotSDK::Crm::PublicBoolPropertyOperation }

          variant :NUMBER, -> { HubspotSDK::Crm::PublicNumberPropertyOperation }

          variant :STRING, -> { HubspotSDK::Crm::PublicStringPropertyOperation }

          variant :DATETIME, -> { HubspotSDK::Crm::PublicDateTimePropertyOperation }

          variant :RANGED_DATE, -> { HubspotSDK::Crm::PublicRangedDatePropertyOperation }

          variant :COMPARATIVE_PROPERTY_UPDATED, -> { HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation }

          variant :COMPARATIVE_DATE, -> { HubspotSDK::Crm::PublicComparativeDatePropertyOperation }

          variant :ROLLING_DATE_RANGE, -> { HubspotSDK::Crm::PublicRollingDateRangePropertyOperation }

          variant :ROLLING_PROPERTY_UPDATED, -> { HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation }

          variant :ENUMERATION, -> { HubspotSDK::Crm::PublicEnumerationPropertyOperation }

          variant :ALL_PROPERTY, -> { HubspotSDK::Crm::PublicAllPropertyTypesOperation }

          variant :NUMBER_RANGED, -> { HubspotSDK::Crm::PublicRangedNumberPropertyOperation }

          variant :MULTISTRING, -> { HubspotSDK::Crm::PublicMultiStringPropertyOperation }

          variant :DATE, -> { HubspotSDK::Crm::PublicDatePropertyOperation }

          variant :CALENDAR_DATE, -> { HubspotSDK::Crm::PublicCalendarDatePropertyOperation }

          variant :TIME_POINT, -> { HubspotSDK::Crm::PublicTimePointOperation }

          variant -> { HubspotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicBoolPropertyOperation, HubspotSDK::Models::Crm::PublicNumberPropertyOperation, HubspotSDK::Models::Crm::PublicStringPropertyOperation, HubspotSDK::Models::Crm::PublicDateTimePropertyOperation, HubspotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubspotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubspotSDK::Models::Crm::PublicDatePropertyOperation, HubspotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
