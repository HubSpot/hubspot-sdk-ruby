# typed: strong

module HubSpotSDK
  module Models
    module Events
      class PropertyFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::PropertyFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubSpotSDK::Events::PropertyFilter::FilterType::TaggedSymbol)
        end
        attr_accessor :filter_type

        sig { returns(HubSpotSDK::Events::PropertyFilter::Operation::Variants) }
        attr_accessor :operation

        sig { returns(String) }
        attr_accessor :property

        sig { returns(T.nilable(HubSpotSDK::Events::PropertyFilterContext)) }
        attr_reader :context

        sig do
          params(
            context: HubSpotSDK::Events::PropertyFilterContext::OrHash
          ).void
        end
        attr_writer :context

        sig { returns(T.nilable(Integer)) }
        attr_reader :filter_insights_id

        sig { params(filter_insights_id: Integer).void }
        attr_writer :filter_insights_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :framework_filter_id

        sig { params(framework_filter_id: Integer).void }
        attr_writer :framework_filter_id

        sig do
          params(
            filter_type:
              HubSpotSDK::Events::PropertyFilter::FilterType::OrSymbol,
            operation:
              T.any(
                HubSpotSDK::Events::BoolPropertyOperation::OrHash,
                HubSpotSDK::Events::NumberPropertyOperation::OrHash,
                HubSpotSDK::Events::StringPropertyOperation::OrHash,
                HubSpotSDK::Events::DateTimePropertyOperation::OrHash,
                HubSpotSDK::Events::RangedDatePropertyOperation::OrHash,
                HubSpotSDK::Events::ComparativeDatePropertyOperation::OrHash,
                HubSpotSDK::Events::ComparativeBoolPropertyOperation::OrHash,
                HubSpotSDK::Events::ComparativeNumberPropertyOperation::OrHash,
                HubSpotSDK::Events::ComparativeStringPropertyOperation::OrHash,
                HubSpotSDK::Events::ComparativePropertyUpdatedOperation::OrHash,
                HubSpotSDK::Events::RollingDateRangePropertyOperation::OrHash,
                HubSpotSDK::Events::RollingPropertyUpdatedOperation::OrHash,
                HubSpotSDK::Events::EnumerationPropertyOperation::OrHash,
                HubSpotSDK::Events::AllPropertyTypesOperation::OrHash,
                HubSpotSDK::Events::RangedNumberPropertyOperation::OrHash,
                HubSpotSDK::Events::MultiStringPropertyOperation::OrHash,
                HubSpotSDK::Events::DatePropertyOperation::OrHash,
                HubSpotSDK::Events::CalendarDatePropertyOperation::OrHash,
                HubSpotSDK::Events::TimePointOperation::OrHash,
                HubSpotSDK::Events::RangedTimeOperation::OrHash,
                HubSpotSDK::Events::RegexPropertyOperation::OrHash
              ),
            property: String,
            context: HubSpotSDK::Events::PropertyFilterContext::OrHash,
            filter_insights_id: Integer,
            framework_filter_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          filter_type:,
          operation:,
          property:,
          context: nil,
          filter_insights_id: nil,
          framework_filter_id: nil
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubSpotSDK::Events::PropertyFilter::FilterType::TaggedSymbol,
              operation:
                HubSpotSDK::Events::PropertyFilter::Operation::Variants,
              property: String,
              context: HubSpotSDK::Events::PropertyFilterContext,
              filter_insights_id: Integer,
              framework_filter_id: Integer
            }
          )
        end
        def to_hash
        end

        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::PropertyFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY =
            T.let(
              :PROPERTY,
              HubSpotSDK::Events::PropertyFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::PropertyFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Operation
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Events::BoolPropertyOperation,
                HubSpotSDK::Events::NumberPropertyOperation,
                HubSpotSDK::Events::StringPropertyOperation,
                HubSpotSDK::Events::DateTimePropertyOperation,
                HubSpotSDK::Events::RangedDatePropertyOperation,
                HubSpotSDK::Events::ComparativeDatePropertyOperation,
                HubSpotSDK::Events::ComparativeBoolPropertyOperation,
                HubSpotSDK::Events::ComparativeNumberPropertyOperation,
                HubSpotSDK::Events::ComparativeStringPropertyOperation,
                HubSpotSDK::Events::ComparativePropertyUpdatedOperation,
                HubSpotSDK::Events::RollingDateRangePropertyOperation,
                HubSpotSDK::Events::RollingPropertyUpdatedOperation,
                HubSpotSDK::Events::EnumerationPropertyOperation,
                HubSpotSDK::Events::AllPropertyTypesOperation,
                HubSpotSDK::Events::RangedNumberPropertyOperation,
                HubSpotSDK::Events::MultiStringPropertyOperation,
                HubSpotSDK::Events::DatePropertyOperation,
                HubSpotSDK::Events::CalendarDatePropertyOperation,
                HubSpotSDK::Events::TimePointOperation,
                HubSpotSDK::Events::RangedTimeOperation,
                HubSpotSDK::Events::RegexPropertyOperation
              )
            end

          sig do
            override.returns(
              T::Array[HubSpotSDK::Events::PropertyFilter::Operation::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
