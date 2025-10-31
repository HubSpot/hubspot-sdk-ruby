# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class PropertyFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::PropertyFilter::FilterType]
        required :filter_type,
                 enum: -> {
                   HubspotSDK::Events::PropertyFilter::FilterType
                 },
                 api_name: :filterType

        # @!attribute operation
        #
        #   @return [HubspotSDK::Models::Events::BoolPropertyOperation, HubspotSDK::Models::Events::NumberPropertyOperation, HubspotSDK::Models::Events::StringPropertyOperation, HubspotSDK::Models::Events::DateTimePropertyOperation, HubspotSDK::Models::Events::RangedDatePropertyOperation, HubspotSDK::Models::Events::ComparativeDatePropertyOperation, HubspotSDK::Models::Events::ComparativePropertyUpdatedOperation, HubspotSDK::Models::Events::RollingDateRangePropertyOperation, HubspotSDK::Models::Events::RollingPropertyUpdatedOperation, HubspotSDK::Models::Events::EnumerationPropertyOperation, HubspotSDK::Models::Events::AllPropertyTypesOperation, HubspotSDK::Models::Events::RangedNumberPropertyOperation, HubspotSDK::Models::Events::MultiStringPropertyOperation, HubspotSDK::Models::Events::DatePropertyOperation, HubspotSDK::Models::Events::CalendarDatePropertyOperation, HubspotSDK::Models::Events::TimePointOperation, HubspotSDK::Models::Events::RangedTimeOperation]
        required :operation, union: -> { HubspotSDK::Events::PropertyFilter::Operation }

        # @!attribute property
        #
        #   @return [String]
        required :property, String

        # @!attribute framework_filter_id
        #
        #   @return [Integer, nil]
        optional :framework_filter_id, Integer, api_name: :frameworkFilterId

        # @!method initialize(filter_type:, operation:, property:, framework_filter_id: nil)
        #   @param filter_type [Symbol, HubspotSDK::Models::Events::PropertyFilter::FilterType]
        #   @param operation [HubspotSDK::Models::Events::BoolPropertyOperation, HubspotSDK::Models::Events::NumberPropertyOperation, HubspotSDK::Models::Events::StringPropertyOperation, HubspotSDK::Models::Events::DateTimePropertyOperation, HubspotSDK::Models::Events::RangedDatePropertyOperation, HubspotSDK::Models::Events::ComparativeDatePropertyOperation, HubspotSDK::Models::Events::ComparativePropertyUpdatedOperation, HubspotSDK::Models::Events::RollingDateRangePropertyOperation, HubspotSDK::Models::Events::RollingPropertyUpdatedOperation, HubspotSDK::Models::Events::EnumerationPropertyOperation, HubspotSDK::Models::Events::AllPropertyTypesOperation, HubspotSDK::Models::Events::RangedNumberPropertyOperation, HubspotSDK::Models::Events::MultiStringPropertyOperation, HubspotSDK::Models::Events::DatePropertyOperation, HubspotSDK::Models::Events::CalendarDatePropertyOperation, HubspotSDK::Models::Events::TimePointOperation, HubspotSDK::Models::Events::RangedTimeOperation]
        #   @param property [String]
        #   @param framework_filter_id [Integer]

        # @see HubspotSDK::Models::Events::PropertyFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          PROPERTY = :PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::PropertyFilter#operation
        module Operation
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Events::BoolPropertyOperation }

          variant -> { HubspotSDK::Events::NumberPropertyOperation }

          variant -> { HubspotSDK::Events::StringPropertyOperation }

          variant -> { HubspotSDK::Events::DateTimePropertyOperation }

          variant -> { HubspotSDK::Events::RangedDatePropertyOperation }

          variant -> { HubspotSDK::Events::ComparativeDatePropertyOperation }

          variant -> { HubspotSDK::Events::ComparativePropertyUpdatedOperation }

          variant -> { HubspotSDK::Events::RollingDateRangePropertyOperation }

          variant -> { HubspotSDK::Events::RollingPropertyUpdatedOperation }

          variant -> { HubspotSDK::Events::EnumerationPropertyOperation }

          variant -> { HubspotSDK::Events::AllPropertyTypesOperation }

          variant -> { HubspotSDK::Events::RangedNumberPropertyOperation }

          variant -> { HubspotSDK::Events::MultiStringPropertyOperation }

          variant -> { HubspotSDK::Events::DatePropertyOperation }

          variant -> { HubspotSDK::Events::CalendarDatePropertyOperation }

          variant -> { HubspotSDK::Events::TimePointOperation }

          variant -> { HubspotSDK::Events::RangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Events::BoolPropertyOperation, HubspotSDK::Models::Events::NumberPropertyOperation, HubspotSDK::Models::Events::StringPropertyOperation, HubspotSDK::Models::Events::DateTimePropertyOperation, HubspotSDK::Models::Events::RangedDatePropertyOperation, HubspotSDK::Models::Events::ComparativeDatePropertyOperation, HubspotSDK::Models::Events::ComparativePropertyUpdatedOperation, HubspotSDK::Models::Events::RollingDateRangePropertyOperation, HubspotSDK::Models::Events::RollingPropertyUpdatedOperation, HubspotSDK::Models::Events::EnumerationPropertyOperation, HubspotSDK::Models::Events::AllPropertyTypesOperation, HubspotSDK::Models::Events::RangedNumberPropertyOperation, HubspotSDK::Models::Events::MultiStringPropertyOperation, HubspotSDK::Models::Events::DatePropertyOperation, HubspotSDK::Models::Events::CalendarDatePropertyOperation, HubspotSDK::Models::Events::TimePointOperation, HubspotSDK::Models::Events::RangedTimeOperation)]
        end
      end
    end
  end
end
