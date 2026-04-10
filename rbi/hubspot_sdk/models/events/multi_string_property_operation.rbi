# typed: strong

module HubSpotSDK
  module Models
    module Events
      class MultiStringPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::MultiStringPropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Events::MultiStringPropertyOperation::CoalescingRefineBy::Variants
          )
        end
        attr_accessor :coalescing_refine_by

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubSpotSDK::Events::MultiStringPropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig { returns(T.nilable(String)) }
        attr_reader :default_value

        sig { params(default_value: String).void }
        attr_writer :default_value

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Events::MultiStringPropertyOperation::PruningRefineBy::Variants
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
              HubSpotSDK::Events::MultiStringPropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubSpotSDK::Events::MultiStringPropertyOperation::PropertyType::OrSymbol,
            values: T::Array[String],
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
          values:,
          default_value: nil,
          pruning_refine_by: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              coalescing_refine_by:
                HubSpotSDK::Events::MultiStringPropertyOperation::CoalescingRefineBy::Variants,
              include_objects_with_no_value_set: T::Boolean,
              operation_type: String,
              operator:
                HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubSpotSDK::Events::MultiStringPropertyOperation::PropertyType::TaggedSymbol,
              values: T::Array[String],
              default_value: String,
              pruning_refine_by:
                HubSpotSDK::Events::MultiStringPropertyOperation::PruningRefineBy::Variants,
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
                HubSpotSDK::Events::MultiStringPropertyOperation::CoalescingRefineBy::Variants
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
                HubSpotSDK::Events::MultiStringPropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTAINS =
            T.let(
              :CONTAINS,
              HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          CONTAINS_EXACTLY =
            T.let(
              :CONTAINS_EXACTLY,
              HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          DOES_NOT_CONTAIN =
            T.let(
              :DOES_NOT_CONTAIN,
              HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          DOES_NOT_CONTAIN_EXACTLY =
            T.let(
              :DOES_NOT_CONTAIN_EXACTLY,
              HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          ENDS_WITH =
            T.let(
              :ENDS_WITH,
              HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          IS_EQUAL_TO =
            T.let(
              :IS_EQUAL_TO,
              HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          IS_NOT_EQUAL_TO =
            T.let(
              :IS_NOT_EQUAL_TO,
              HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          STARTS_WITH =
            T.let(
              :STARTS_WITH,
              HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
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
                HubSpotSDK::Events::MultiStringPropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MULTISTRING =
            T.let(
              :multistring,
              HubSpotSDK::Events::MultiStringPropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::MultiStringPropertyOperation::PropertyType::TaggedSymbol
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
                HubSpotSDK::Events::MultiStringPropertyOperation::PruningRefineBy::Variants
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
