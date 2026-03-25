# typed: strong

module HubspotSDK
  module Models
    module Events
      class PropertyFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::PropertyFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubspotSDK::Events::PropertyFilter::FilterType::TaggedSymbol)
        end
        attr_accessor :filter_type

        sig { returns(HubspotSDK::Events::PropertyFilter::Operation::Variants) }
        attr_accessor :operation

        sig { returns(String) }
        attr_accessor :property

        sig { returns(T.nilable(HubspotSDK::Events::PropertyFilterContext)) }
        attr_reader :context

        sig do
          params(
            context: HubspotSDK::Events::PropertyFilterContext::OrHash
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
              HubspotSDK::Events::PropertyFilter::FilterType::OrSymbol,
            operation:
              T.any(
                HubspotSDK::Events::BoolPropertyOperation::OrHash,
                HubspotSDK::Events::NumberPropertyOperation::OrHash,
                HubspotSDK::Events::StringPropertyOperation::OrHash,
                HubspotSDK::Events::DateTimePropertyOperation::OrHash,
                HubspotSDK::Events::RangedDatePropertyOperation::OrHash,
                HubspotSDK::Events::ComparativeDatePropertyOperation::OrHash,
                HubspotSDK::Events::ComparativeBoolPropertyOperation::OrHash,
                HubspotSDK::Events::ComparativeNumberPropertyOperation::OrHash,
                HubspotSDK::Events::ComparativeStringPropertyOperation::OrHash,
                HubspotSDK::Events::ComparativePropertyUpdatedOperation::OrHash,
                HubspotSDK::Events::RollingDateRangePropertyOperation::OrHash,
                HubspotSDK::Events::RollingPropertyUpdatedOperation::OrHash,
                HubspotSDK::Events::EnumerationPropertyOperation::OrHash,
                HubspotSDK::Events::AllPropertyTypesOperation::OrHash,
                HubspotSDK::Events::RangedNumberPropertyOperation::OrHash,
                HubspotSDK::Events::MultiStringPropertyOperation::OrHash,
                HubspotSDK::Events::DatePropertyOperation::OrHash,
                HubspotSDK::Events::CalendarDatePropertyOperation::OrHash,
                HubspotSDK::Events::TimePointOperation::OrHash,
                HubspotSDK::Events::RangedTimeOperation::OrHash,
                HubspotSDK::Events::RegexPropertyOperation::OrHash
              ),
            property: String,
            context: HubspotSDK::Events::PropertyFilterContext::OrHash,
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
                HubspotSDK::Events::PropertyFilter::FilterType::TaggedSymbol,
              operation:
                HubspotSDK::Events::PropertyFilter::Operation::Variants,
              property: String,
              context: HubspotSDK::Events::PropertyFilterContext,
              filter_insights_id: Integer,
              framework_filter_id: Integer
            }
          )
        end
        def to_hash
        end

        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::PropertyFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY =
            T.let(
              :PROPERTY,
              HubspotSDK::Events::PropertyFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::PropertyFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Operation
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Events::BoolPropertyOperation,
                HubspotSDK::Events::NumberPropertyOperation,
                HubspotSDK::Events::StringPropertyOperation,
                HubspotSDK::Events::DateTimePropertyOperation,
                HubspotSDK::Events::RangedDatePropertyOperation,
                HubspotSDK::Events::ComparativeDatePropertyOperation,
                HubspotSDK::Events::ComparativeBoolPropertyOperation,
                HubspotSDK::Events::ComparativeNumberPropertyOperation,
                HubspotSDK::Events::ComparativeStringPropertyOperation,
                HubspotSDK::Events::ComparativePropertyUpdatedOperation,
                HubspotSDK::Events::RollingDateRangePropertyOperation,
                HubspotSDK::Events::RollingPropertyUpdatedOperation,
                HubspotSDK::Events::EnumerationPropertyOperation,
                HubspotSDK::Events::AllPropertyTypesOperation,
                HubspotSDK::Events::RangedNumberPropertyOperation,
                HubspotSDK::Events::MultiStringPropertyOperation,
                HubspotSDK::Events::DatePropertyOperation,
                HubspotSDK::Events::CalendarDatePropertyOperation,
                HubspotSDK::Events::TimePointOperation,
                HubspotSDK::Events::RangedTimeOperation,
                HubspotSDK::Events::RegexPropertyOperation
              )
            end

          sig do
            override.returns(
              T::Array[HubspotSDK::Events::PropertyFilter::Operation::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
