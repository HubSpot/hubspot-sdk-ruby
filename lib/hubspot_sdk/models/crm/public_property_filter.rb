# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicPropertyFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Indicates that the filter (PROPERTY).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicPropertyFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicPropertyFilter::FilterType },
                 api_name: :filterType

        # @!attribute operation
        #   Defines the operation to be performed on the property, such as comparison or
        #   value matching.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicBoolPropertyOperation, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubSpotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubSpotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubSpotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDatePropertyOperation, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation]
        required :operation, union: -> { HubSpotSDK::Crm::PublicPropertyFilter::Operation }

        # @!attribute property
        #   Specifies the name of the property that the filter is applied to.
        #
        #   @return [String]
        required :property, String

        # @!method initialize(filter_type:, operation:, property:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicPropertyFilter} for more details.
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicPropertyFilter::FilterType] Indicates that the filter (PROPERTY).
        #
        #   @param operation [HubSpotSDK::Models::Crm::PublicBoolPropertyOperation, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubSpotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubSpotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubSpotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDatePropertyOperation, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation] Defines the operation to be performed on the property, such as comparison or val
        #
        #   @param property [String] Specifies the name of the property that the filter is applied to.

        # Indicates that the filter (PROPERTY).
        #
        # @see HubSpotSDK::Models::Crm::PublicPropertyFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          PROPERTY = :PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines the operation to be performed on the property, such as comparison or
        # value matching.
        #
        # @see HubSpotSDK::Models::Crm::PublicPropertyFilter#operation
        module Operation
          extend HubSpotSDK::Internal::Type::Union

          discriminator :operationType

          variant :BOOL, -> { HubSpotSDK::Crm::PublicBoolPropertyOperation }

          variant :NUMBER, -> { HubSpotSDK::Crm::PublicNumberPropertyOperation }

          variant :STRING, -> { HubSpotSDK::Crm::PublicStringPropertyOperation }

          variant :DATETIME, -> { HubSpotSDK::Crm::PublicDateTimePropertyOperation }

          variant :RANGED_DATE, -> { HubSpotSDK::Crm::PublicRangedDatePropertyOperation }

          variant :COMPARATIVE_PROPERTY_UPDATED, -> { HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation }

          variant :COMPARATIVE_DATE, -> { HubSpotSDK::Crm::PublicComparativeDatePropertyOperation }

          variant :ROLLING_DATE_RANGE, -> { HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation }

          variant :ROLLING_PROPERTY_UPDATED, -> { HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation }

          variant :ENUMERATION, -> { HubSpotSDK::Crm::PublicEnumerationPropertyOperation }

          variant :ALL_PROPERTY, -> { HubSpotSDK::Crm::PublicAllPropertyTypesOperation }

          variant :NUMBER_RANGED, -> { HubSpotSDK::Crm::PublicRangedNumberPropertyOperation }

          variant :MULTISTRING, -> { HubSpotSDK::Crm::PublicMultiStringPropertyOperation }

          variant :DATE, -> { HubSpotSDK::Crm::PublicDatePropertyOperation }

          variant :CALENDAR_DATE, -> { HubSpotSDK::Crm::PublicCalendarDatePropertyOperation }

          variant :TIME_POINT, -> { HubSpotSDK::Crm::PublicTimePointOperation }

          variant :TIME_RANGED, -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicBoolPropertyOperation, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubSpotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubSpotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubSpotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDatePropertyOperation, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
