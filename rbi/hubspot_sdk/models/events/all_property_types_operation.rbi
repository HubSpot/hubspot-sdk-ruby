# typed: strong

module HubSpotSDK
  module Models
    module Events
      class AllPropertyTypesOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::AllPropertyTypesOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Events::AllPropertyTypesOperation::CoalescingRefineBy::Variants
          )
        end
        attr_accessor :coalescing_refine_by

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubSpotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubSpotSDK::Events::AllPropertyTypesOperation::PropertyType::TaggedSymbol
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
              HubSpotSDK::Events::AllPropertyTypesOperation::PruningRefineBy::Variants
            )
          )
        end
        attr_reader :pruning_refine_by

        sig do
          params(
            pruning_refine_by:
              T.any(
                HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Events::RelativeRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Events::AllHistoryRefineBy::OrHash,
                HubSpotSDK::Events::TimePointOperation::OrHash,
                HubSpotSDK::Events::RangedTimeOperation::OrHash
              )
          ).void
        end
        attr_writer :pruning_refine_by

        sig { returns(T.nilable(String)) }
        attr_reader :render_spec

        sig { params(render_spec: String).void }
        attr_writer :render_spec

        sig do
          params(
            coalescing_refine_by:
              T.any(
                HubSpotSDK::Events::NumOccurrencesRefineBy::OrHash,
                HubSpotSDK::Events::SetOccurrencesRefineBy::OrHash
              ),
            include_objects_with_no_value_set: T::Boolean,
            operation_type: String,
            operator:
              HubSpotSDK::Events::AllPropertyTypesOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubSpotSDK::Events::AllPropertyTypesOperation::PropertyType::OrSymbol,
            default_value: String,
            pruning_refine_by:
              T.any(
                HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Events::RelativeRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Events::AllHistoryRefineBy::OrHash,
                HubSpotSDK::Events::TimePointOperation::OrHash,
                HubSpotSDK::Events::RangedTimeOperation::OrHash
              ),
            render_spec: String
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
          pruning_refine_by: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              coalescing_refine_by:
                HubSpotSDK::Events::AllPropertyTypesOperation::CoalescingRefineBy::Variants,
              include_objects_with_no_value_set: T::Boolean,
              operation_type: String,
              operator:
                HubSpotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubSpotSDK::Events::AllPropertyTypesOperation::PropertyType::TaggedSymbol,
              default_value: String,
              pruning_refine_by:
                HubSpotSDK::Events::AllPropertyTypesOperation::PruningRefineBy::Variants,
              render_spec: String
            }
          )
        end
        def to_hash
        end

        module CoalescingRefineBy
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Events::NumOccurrencesRefineBy,
                HubSpotSDK::Events::SetOccurrencesRefineBy
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::AllPropertyTypesOperation::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::AllPropertyTypesOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_BLANK =
            T.let(
              :IS_BLANK,
              HubSpotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
            )
          IS_KNOWN =
            T.let(
              :IS_KNOWN,
              HubSpotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
            )
          IS_NOT_BLANK =
            T.let(
              :IS_NOT_BLANK,
              HubSpotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
            )
          IS_UNKNOWN =
            T.let(
              :IS_UNKNOWN,
              HubSpotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::AllPropertyTypesOperation::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::AllPropertyTypesOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALLTYPES =
            T.let(
              :alltypes,
              HubSpotSDK::Events::AllPropertyTypesOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::AllPropertyTypesOperation::PropertyType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PruningRefineBy
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Events::RelativeComparativeTimestampRefineBy,
                HubSpotSDK::Events::RelativeRangedTimestampRefineBy,
                HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy,
                HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy,
                HubSpotSDK::Events::AllHistoryRefineBy,
                HubSpotSDK::Events::TimePointOperation,
                HubSpotSDK::Events::RangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::AllPropertyTypesOperation::PruningRefineBy::Variants
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
