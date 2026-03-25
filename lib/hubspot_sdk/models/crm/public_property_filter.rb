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

          variant -> { HubspotSDK::Crm::PublicBoolPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicNumberPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicStringPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicDateTimePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicRangedDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation }

          variant -> { HubspotSDK::Crm::PublicComparativeDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicRollingDateRangePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation }

          variant -> { HubspotSDK::Crm::PublicEnumerationPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicAllPropertyTypesOperation }

          variant -> { HubspotSDK::Crm::PublicRangedNumberPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicMultiStringPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicCalendarDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicTimePointOperation }

          variant -> { HubspotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicBoolPropertyOperation, HubspotSDK::Models::Crm::PublicNumberPropertyOperation, HubspotSDK::Models::Crm::PublicStringPropertyOperation, HubspotSDK::Models::Crm::PublicDateTimePropertyOperation, HubspotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubspotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubspotSDK::Models::Crm::PublicDatePropertyOperation, HubspotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
