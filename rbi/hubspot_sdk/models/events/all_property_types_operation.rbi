# typed: strong

module HubspotSDK
  module Models
    module Events
      class AllPropertyTypesOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::AllPropertyTypesOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Events::AllPropertyTypesOperation::CoalescingRefineBy::Variants
          )
        end
        attr_accessor :coalescing_refine_by

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubspotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::AllPropertyTypesOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(T.nilable(String)) }
        attr_reader :default_value

        sig { params(default_value: String).void }
        attr_writer :default_value

        sig do
          returns(
            T.nilable(
              HubspotSDK::Events::AllPropertyTypesOperation::PruningRefineBy::Variants
            )
          )
        end
        attr_reader :pruning_refine_by

        sig do
          params(
            pruning_refine_by:
              T.any(
                HubspotSDK::Events::RelativeComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Events::RelativeRangedTimestampRefineBy::OrHash,
                HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::OrHash,
                HubspotSDK::Events::AllHistoryRefineBy::OrHash,
                HubspotSDK::Events::TimePointOperation::OrHash,
                HubspotSDK::Events::RangedTimeOperation::OrHash
              )
          ).void
        end
        attr_writer :pruning_refine_by

        sig do
          params(
            coalescing_refine_by:
              T.any(
                HubspotSDK::Events::NumOccurrencesRefineBy::OrHash,
                HubspotSDK::Events::SetOccurrencesRefineBy::OrHash
              ),
            include_objects_with_no_value_set: T::Boolean,
            operation_type: String,
            operator:
              HubspotSDK::Events::AllPropertyTypesOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubspotSDK::Events::AllPropertyTypesOperation::PropertyType::OrSymbol,
            default_value: String,
            pruning_refine_by:
              T.any(
                HubspotSDK::Events::RelativeComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Events::RelativeRangedTimestampRefineBy::OrHash,
                HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::OrHash,
                HubspotSDK::Events::AllHistoryRefineBy::OrHash,
                HubspotSDK::Events::TimePointOperation::OrHash,
                HubspotSDK::Events::RangedTimeOperation::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          coalescing_refine_by:,
          include_objects_with_no_value_set:,
          operation_type:,
          operator:,
          operator_name:,
          property_type:,
          default_value: nil,
          pruning_refine_by: nil
        )
        end

        sig do
          override.returns(
            {
              coalescing_refine_by:
                HubspotSDK::Events::AllPropertyTypesOperation::CoalescingRefineBy::Variants,
              include_objects_with_no_value_set: T::Boolean,
              operation_type: String,
              operator:
                HubspotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubspotSDK::Events::AllPropertyTypesOperation::PropertyType::TaggedSymbol,
              default_value: String,
              pruning_refine_by:
                HubspotSDK::Events::AllPropertyTypesOperation::PruningRefineBy::Variants
            }
          )
        end
        def to_hash
        end

        module CoalescingRefineBy
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Events::NumOccurrencesRefineBy,
                HubspotSDK::Events::SetOccurrencesRefineBy
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AllPropertyTypesOperation::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::AllPropertyTypesOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_KNOWN =
            T.let(
              :IS_KNOWN,
              HubspotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
            )
          IS_UNKNOWN =
            T.let(
              :IS_UNKNOWN,
              HubspotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
            )
          IS_BLANK =
            T.let(
              :IS_BLANK,
              HubspotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
            )
          IS_NOT_BLANK =
            T.let(
              :IS_NOT_BLANK,
              HubspotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::AllPropertyTypesOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALLTYPES =
            T.let(
              :alltypes,
              HubspotSDK::Events::AllPropertyTypesOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AllPropertyTypesOperation::PropertyType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PruningRefineBy
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Events::RelativeComparativeTimestampRefineBy,
                HubspotSDK::Events::RelativeRangedTimestampRefineBy,
                HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy,
                HubspotSDK::Events::AbsoluteRangedTimestampRefineBy,
                HubspotSDK::Events::AllHistoryRefineBy,
                HubspotSDK::Events::TimePointOperation,
                HubspotSDK::Events::RangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AllPropertyTypesOperation::PruningRefineBy::Variants
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
