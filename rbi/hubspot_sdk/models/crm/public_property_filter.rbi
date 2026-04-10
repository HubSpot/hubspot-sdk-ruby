# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicPropertyFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicPropertyFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates that the filter (PROPERTY).
        sig do
          returns(HubSpotSDK::Crm::PublicPropertyFilter::FilterType::OrSymbol)
        end
        attr_accessor :filter_type

        # Defines the operation to be performed on the property, such as comparison or
        # value matching.
        sig do
          returns(
            T.any(
              HubSpotSDK::Crm::PublicBoolPropertyOperation,
              HubSpotSDK::Crm::PublicNumberPropertyOperation,
              HubSpotSDK::Crm::PublicStringPropertyOperation,
              HubSpotSDK::Crm::PublicDateTimePropertyOperation,
              HubSpotSDK::Crm::PublicRangedDatePropertyOperation,
              HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation,
              HubSpotSDK::Crm::PublicComparativeDatePropertyOperation,
              HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation,
              HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation,
              HubSpotSDK::Crm::PublicEnumerationPropertyOperation,
              HubSpotSDK::Crm::PublicAllPropertyTypesOperation,
              HubSpotSDK::Crm::PublicRangedNumberPropertyOperation,
              HubSpotSDK::Crm::PublicMultiStringPropertyOperation,
              HubSpotSDK::Crm::PublicDatePropertyOperation,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation,
              HubSpotSDK::Crm::PublicTimePointOperation,
              HubSpotSDK::Crm::PublicRangedTimeOperation
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
              HubSpotSDK::Crm::PublicPropertyFilter::FilterType::OrSymbol,
            operation:
              T.any(
                HubSpotSDK::Crm::PublicBoolPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicNumberPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicStringPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicDateTimePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation::OrHash,
                HubSpotSDK::Crm::PublicComparativeDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation::OrHash,
                HubSpotSDK::Crm::PublicEnumerationPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicAllPropertyTypesOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedNumberPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicMultiStringPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicTimePointOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedTimeOperation::OrHash
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
                HubSpotSDK::Crm::PublicPropertyFilter::FilterType::OrSymbol,
              operation:
                T.any(
                  HubSpotSDK::Crm::PublicBoolPropertyOperation,
                  HubSpotSDK::Crm::PublicNumberPropertyOperation,
                  HubSpotSDK::Crm::PublicStringPropertyOperation,
                  HubSpotSDK::Crm::PublicDateTimePropertyOperation,
                  HubSpotSDK::Crm::PublicRangedDatePropertyOperation,
                  HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                  HubSpotSDK::Crm::PublicComparativeDatePropertyOperation,
                  HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation,
                  HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                  HubSpotSDK::Crm::PublicEnumerationPropertyOperation,
                  HubSpotSDK::Crm::PublicAllPropertyTypesOperation,
                  HubSpotSDK::Crm::PublicRangedNumberPropertyOperation,
                  HubSpotSDK::Crm::PublicMultiStringPropertyOperation,
                  HubSpotSDK::Crm::PublicDatePropertyOperation,
                  HubSpotSDK::Crm::PublicCalendarDatePropertyOperation,
                  HubSpotSDK::Crm::PublicTimePointOperation,
                  HubSpotSDK::Crm::PublicRangedTimeOperation
                ),
              property: String
            }
          )
        end
        def to_hash
        end

        # Indicates that the filter (PROPERTY).
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicPropertyFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY =
            T.let(
              :PROPERTY,
              HubSpotSDK::Crm::PublicPropertyFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicPropertyFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Defines the operation to be performed on the property, such as comparison or
        # value matching.
        module Operation
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicBoolPropertyOperation,
                HubSpotSDK::Crm::PublicNumberPropertyOperation,
                HubSpotSDK::Crm::PublicStringPropertyOperation,
                HubSpotSDK::Crm::PublicDateTimePropertyOperation,
                HubSpotSDK::Crm::PublicRangedDatePropertyOperation,
                HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                HubSpotSDK::Crm::PublicComparativeDatePropertyOperation,
                HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation,
                HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                HubSpotSDK::Crm::PublicEnumerationPropertyOperation,
                HubSpotSDK::Crm::PublicAllPropertyTypesOperation,
                HubSpotSDK::Crm::PublicRangedNumberPropertyOperation,
                HubSpotSDK::Crm::PublicMultiStringPropertyOperation,
                HubSpotSDK::Crm::PublicDatePropertyOperation,
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation,
                HubSpotSDK::Crm::PublicTimePointOperation,
                HubSpotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicPropertyFilter::Operation::Variants
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
