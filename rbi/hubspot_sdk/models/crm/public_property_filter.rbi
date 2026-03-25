# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicPropertyFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates that the filter (PROPERTY).
        sig do
          returns(HubspotSDK::Crm::PublicPropertyFilter::FilterType::OrSymbol)
        end
        attr_accessor :filter_type

        # Defines the operation to be performed on the property, such as comparison or
        # value matching.
        sig do
          returns(
            T.any(
              HubspotSDK::Crm::PublicBoolPropertyOperation,
              HubspotSDK::Crm::PublicNumberPropertyOperation,
              HubspotSDK::Crm::PublicStringPropertyOperation,
              HubspotSDK::Crm::PublicDateTimePropertyOperation,
              HubspotSDK::Crm::PublicRangedDatePropertyOperation,
              HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation,
              HubspotSDK::Crm::PublicComparativeDatePropertyOperation,
              HubspotSDK::Crm::PublicRollingDateRangePropertyOperation,
              HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation,
              HubspotSDK::Crm::PublicEnumerationPropertyOperation,
              HubspotSDK::Crm::PublicAllPropertyTypesOperation,
              HubspotSDK::Crm::PublicRangedNumberPropertyOperation,
              HubspotSDK::Crm::PublicMultiStringPropertyOperation,
              HubspotSDK::Crm::PublicDatePropertyOperation,
              HubspotSDK::Crm::PublicCalendarDatePropertyOperation,
              HubspotSDK::Crm::PublicTimePointOperation,
              HubspotSDK::Crm::PublicRangedTimeOperation
            )
          )
        end
        attr_accessor :operation

        # Specifies the name of the property that the filter is applied to.
        sig { returns(String) }
        attr_accessor :property

        sig do
          params(
            filter_type:
              HubspotSDK::Crm::PublicPropertyFilter::FilterType::OrSymbol,
            operation:
              T.any(
                HubspotSDK::Crm::PublicBoolPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicNumberPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicStringPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicDateTimePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicRangedDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation::OrHash,
                HubspotSDK::Crm::PublicComparativeDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicRollingDateRangePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation::OrHash,
                HubspotSDK::Crm::PublicEnumerationPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicAllPropertyTypesOperation::OrHash,
                HubspotSDK::Crm::PublicRangedNumberPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicMultiStringPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicCalendarDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicTimePointOperation::OrHash,
                HubspotSDK::Crm::PublicRangedTimeOperation::OrHash
              ),
            property: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates that the filter (PROPERTY).
          filter_type:,
          # Defines the operation to be performed on the property, such as comparison or
          # value matching.
          operation:,
          # Specifies the name of the property that the filter is applied to.
          property:
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubspotSDK::Crm::PublicPropertyFilter::FilterType::OrSymbol,
              operation:
                T.any(
                  HubspotSDK::Crm::PublicBoolPropertyOperation,
                  HubspotSDK::Crm::PublicNumberPropertyOperation,
                  HubspotSDK::Crm::PublicStringPropertyOperation,
                  HubspotSDK::Crm::PublicDateTimePropertyOperation,
                  HubspotSDK::Crm::PublicRangedDatePropertyOperation,
                  HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                  HubspotSDK::Crm::PublicComparativeDatePropertyOperation,
                  HubspotSDK::Crm::PublicRollingDateRangePropertyOperation,
                  HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                  HubspotSDK::Crm::PublicEnumerationPropertyOperation,
                  HubspotSDK::Crm::PublicAllPropertyTypesOperation,
                  HubspotSDK::Crm::PublicRangedNumberPropertyOperation,
                  HubspotSDK::Crm::PublicMultiStringPropertyOperation,
                  HubspotSDK::Crm::PublicDatePropertyOperation,
                  HubspotSDK::Crm::PublicCalendarDatePropertyOperation,
                  HubspotSDK::Crm::PublicTimePointOperation,
                  HubspotSDK::Crm::PublicRangedTimeOperation
                ),
              property: String
            }
          )
        end
        def to_hash
        end

        # Indicates that the filter (PROPERTY).
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicPropertyFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY =
            T.let(
              :PROPERTY,
              HubspotSDK::Crm::PublicPropertyFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicPropertyFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Defines the operation to be performed on the property, such as comparison or
        # value matching.
        module Operation
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicBoolPropertyOperation,
                HubspotSDK::Crm::PublicNumberPropertyOperation,
                HubspotSDK::Crm::PublicStringPropertyOperation,
                HubspotSDK::Crm::PublicDateTimePropertyOperation,
                HubspotSDK::Crm::PublicRangedDatePropertyOperation,
                HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                HubspotSDK::Crm::PublicComparativeDatePropertyOperation,
                HubspotSDK::Crm::PublicRollingDateRangePropertyOperation,
                HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                HubspotSDK::Crm::PublicEnumerationPropertyOperation,
                HubspotSDK::Crm::PublicAllPropertyTypesOperation,
                HubspotSDK::Crm::PublicRangedNumberPropertyOperation,
                HubspotSDK::Crm::PublicMultiStringPropertyOperation,
                HubspotSDK::Crm::PublicDatePropertyOperation,
                HubspotSDK::Crm::PublicCalendarDatePropertyOperation,
                HubspotSDK::Crm::PublicTimePointOperation,
                HubspotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicPropertyFilter::Operation::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
