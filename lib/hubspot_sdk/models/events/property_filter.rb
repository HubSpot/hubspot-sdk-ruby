# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class PropertyFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::PropertyFilter::FilterType]
        required :filter_type,
                 enum: -> {
                   HubSpotSDK::Events::PropertyFilter::FilterType
                 },
                 api_name: :filterType

        # @!attribute operation
        #
        #   @return [HubSpotSDK::Models::Events::BoolPropertyOperation, HubSpotSDK::Models::Events::NumberPropertyOperation, HubSpotSDK::Models::Events::StringPropertyOperation, HubSpotSDK::Models::Events::DateTimePropertyOperation, HubSpotSDK::Models::Events::RangedDatePropertyOperation, HubSpotSDK::Models::Events::ComparativeDatePropertyOperation, HubSpotSDK::Models::Events::ComparativeBoolPropertyOperation, HubSpotSDK::Models::Events::ComparativeNumberPropertyOperation, HubSpotSDK::Models::Events::ComparativeStringPropertyOperation, HubSpotSDK::Models::Events::ComparativePropertyUpdatedOperation, HubSpotSDK::Models::Events::RollingDateRangePropertyOperation, HubSpotSDK::Models::Events::RollingPropertyUpdatedOperation, HubSpotSDK::Models::Events::EnumerationPropertyOperation, HubSpotSDK::Models::Events::AllPropertyTypesOperation, HubSpotSDK::Models::Events::RangedNumberPropertyOperation, HubSpotSDK::Models::Events::MultiStringPropertyOperation, HubSpotSDK::Models::Events::DatePropertyOperation, HubSpotSDK::Models::Events::CalendarDatePropertyOperation, HubSpotSDK::Models::Events::TimePointOperation, HubSpotSDK::Models::Events::RangedTimeOperation, HubSpotSDK::Models::Events::RegexPropertyOperation]
        required :operation, union: -> { HubSpotSDK::Events::PropertyFilter::Operation }

        # @!attribute property
        #
        #   @return [String]
        required :property, String

        # @!attribute context
        #
        #   @return [HubSpotSDK::Models::Events::PropertyFilterContext, nil]
        optional :context, -> { HubSpotSDK::Events::PropertyFilterContext }

        # @!attribute filter_insights_id
        #
        #   @return [Integer, nil]
        optional :filter_insights_id, Integer, api_name: :filterInsightsId

        # @!attribute framework_filter_id
        #
        #   @return [Integer, nil]
        optional :framework_filter_id, Integer, api_name: :frameworkFilterId

        # @!method initialize(filter_type:, operation:, property:, context: nil, filter_insights_id: nil, framework_filter_id: nil)
        #   @param filter_type [Symbol, HubSpotSDK::Models::Events::PropertyFilter::FilterType]
        #   @param operation [HubSpotSDK::Models::Events::BoolPropertyOperation, HubSpotSDK::Models::Events::NumberPropertyOperation, HubSpotSDK::Models::Events::StringPropertyOperation, HubSpotSDK::Models::Events::DateTimePropertyOperation, HubSpotSDK::Models::Events::RangedDatePropertyOperation, HubSpotSDK::Models::Events::ComparativeDatePropertyOperation, HubSpotSDK::Models::Events::ComparativeBoolPropertyOperation, HubSpotSDK::Models::Events::ComparativeNumberPropertyOperation, HubSpotSDK::Models::Events::ComparativeStringPropertyOperation, HubSpotSDK::Models::Events::ComparativePropertyUpdatedOperation, HubSpotSDK::Models::Events::RollingDateRangePropertyOperation, HubSpotSDK::Models::Events::RollingPropertyUpdatedOperation, HubSpotSDK::Models::Events::EnumerationPropertyOperation, HubSpotSDK::Models::Events::AllPropertyTypesOperation, HubSpotSDK::Models::Events::RangedNumberPropertyOperation, HubSpotSDK::Models::Events::MultiStringPropertyOperation, HubSpotSDK::Models::Events::DatePropertyOperation, HubSpotSDK::Models::Events::CalendarDatePropertyOperation, HubSpotSDK::Models::Events::TimePointOperation, HubSpotSDK::Models::Events::RangedTimeOperation, HubSpotSDK::Models::Events::RegexPropertyOperation]
        #   @param property [String]
        #   @param context [HubSpotSDK::Models::Events::PropertyFilterContext]
        #   @param filter_insights_id [Integer]
        #   @param framework_filter_id [Integer]

        # @see HubSpotSDK::Models::Events::PropertyFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          PROPERTY = :PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::PropertyFilter#operation
        module Operation
          extend HubSpotSDK::Internal::Type::Union

          discriminator :propertyType

          variant :bool, -> { HubSpotSDK::Events::BoolPropertyOperation }

          variant :number, -> { HubSpotSDK::Events::NumberPropertyOperation }

          variant :string, -> { HubSpotSDK::Events::StringPropertyOperation }

          variant :datetime, -> { HubSpotSDK::Events::DateTimePropertyOperation }

          variant :"datetime-ranged", -> { HubSpotSDK::Events::RangedDatePropertyOperation }

          variant :"datetime-comparative", -> { HubSpotSDK::Events::ComparativeDatePropertyOperation }

          variant :"bool-comparative", -> { HubSpotSDK::Events::ComparativeBoolPropertyOperation }

          variant :"number-comparative", -> { HubSpotSDK::Events::ComparativeNumberPropertyOperation }

          variant :"string-comparative", -> { HubSpotSDK::Events::ComparativeStringPropertyOperation }

          variant :"property-updated-comparative", -> { HubSpotSDK::Events::ComparativePropertyUpdatedOperation }

          variant :"datetime-rolling", -> { HubSpotSDK::Events::RollingDateRangePropertyOperation }

          variant :"rolling-property-updated", -> { HubSpotSDK::Events::RollingPropertyUpdatedOperation }

          variant :enumeration, -> { HubSpotSDK::Events::EnumerationPropertyOperation }

          variant :alltypes, -> { HubSpotSDK::Events::AllPropertyTypesOperation }

          variant :"number-ranged", -> { HubSpotSDK::Events::RangedNumberPropertyOperation }

          variant :multistring, -> { HubSpotSDK::Events::MultiStringPropertyOperation }

          variant :date, -> { HubSpotSDK::Events::DatePropertyOperation }

          variant :"calendar-date", -> { HubSpotSDK::Events::CalendarDatePropertyOperation }

          variant :timepoint, -> { HubSpotSDK::Events::TimePointOperation }

          variant :rangedtime, -> { HubSpotSDK::Events::RangedTimeOperation }

          variant :regex, -> { HubSpotSDK::Events::RegexPropertyOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Events::BoolPropertyOperation, HubSpotSDK::Models::Events::NumberPropertyOperation, HubSpotSDK::Models::Events::StringPropertyOperation, HubSpotSDK::Models::Events::DateTimePropertyOperation, HubSpotSDK::Models::Events::RangedDatePropertyOperation, HubSpotSDK::Models::Events::ComparativeDatePropertyOperation, HubSpotSDK::Models::Events::ComparativeBoolPropertyOperation, HubSpotSDK::Models::Events::ComparativeNumberPropertyOperation, HubSpotSDK::Models::Events::ComparativeStringPropertyOperation, HubSpotSDK::Models::Events::ComparativePropertyUpdatedOperation, HubSpotSDK::Models::Events::RollingDateRangePropertyOperation, HubSpotSDK::Models::Events::RollingPropertyUpdatedOperation, HubSpotSDK::Models::Events::EnumerationPropertyOperation, HubSpotSDK::Models::Events::AllPropertyTypesOperation, HubSpotSDK::Models::Events::RangedNumberPropertyOperation, HubSpotSDK::Models::Events::MultiStringPropertyOperation, HubSpotSDK::Models::Events::DatePropertyOperation, HubSpotSDK::Models::Events::CalendarDatePropertyOperation, HubSpotSDK::Models::Events::TimePointOperation, HubSpotSDK::Models::Events::RangedTimeOperation, HubSpotSDK::Models::Events::RegexPropertyOperation)]
        end
      end
    end
  end
end
