# typed: strong

module HubspotSDK
  module Models
    module Events
      class MultiStringPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::MultiStringPropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Events::MultiStringPropertyOperation::CoalescingRefineBy::Variants
          )
        end
        attr_accessor :coalescing_refine_by

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::MultiStringPropertyOperation::PropertyType::TaggedSymbol
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
              HubspotSDK::Events::MultiStringPropertyOperation::PruningRefineBy::Variants
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

        sig { returns(T.nilable(String)) }
        attr_reader :render_spec

        sig { params(render_spec: String).void }
        attr_writer :render_spec

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
              HubspotSDK::Events::MultiStringPropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubspotSDK::Events::MultiStringPropertyOperation::PropertyType::OrSymbol,
            values: T::Array[String],
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
                HubspotSDK::Events::MultiStringPropertyOperation::CoalescingRefineBy::Variants,
              include_objects_with_no_value_set: T::Boolean,
              operation_type: String,
              operator:
                HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubspotSDK::Events::MultiStringPropertyOperation::PropertyType::TaggedSymbol,
              values: T::Array[String],
              default_value: String,
              pruning_refine_by:
                HubspotSDK::Events::MultiStringPropertyOperation::PruningRefineBy::Variants,
              render_spec: String
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
                HubspotSDK::Events::MultiStringPropertyOperation::CoalescingRefineBy::Variants
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
                HubspotSDK::Events::MultiStringPropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTAINS =
            T.let(
              :CONTAINS,
              HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          CONTAINS_EXACTLY =
            T.let(
              :CONTAINS_EXACTLY,
              HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          DOES_NOT_CONTAIN =
            T.let(
              :DOES_NOT_CONTAIN,
              HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          DOES_NOT_CONTAIN_EXACTLY =
            T.let(
              :DOES_NOT_CONTAIN_EXACTLY,
              HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          ENDS_WITH =
            T.let(
              :ENDS_WITH,
              HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          IS_EQUAL_TO =
            T.let(
              :IS_EQUAL_TO,
              HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          IS_NOT_EQUAL_TO =
            T.let(
              :IS_NOT_EQUAL_TO,
              HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )
          STARTS_WITH =
            T.let(
              :STARTS_WITH,
              HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::MultiStringPropertyOperation::Operator::TaggedSymbol
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
                HubspotSDK::Events::MultiStringPropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MULTISTRING =
            T.let(
              :multistring,
              HubspotSDK::Events::MultiStringPropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::MultiStringPropertyOperation::PropertyType::TaggedSymbol
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
                HubspotSDK::Events::MultiStringPropertyOperation::PruningRefineBy::Variants
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
