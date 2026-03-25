# typed: strong

module HubspotSDK
  module Models
    module Events
      class ComparativePropertyUpdatedOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::ComparativePropertyUpdatedOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :comparison_property_name

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubspotSDK::Events::ComparativePropertyUpdatedOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::ComparativePropertyUpdatedOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(T.nilable(String)) }
        attr_reader :default_comparison_value

        sig { params(default_comparison_value: String).void }
        attr_writer :default_comparison_value

        sig { returns(T.nilable(String)) }
        attr_reader :default_value

        sig { params(default_value: String).void }
        attr_writer :default_value

        sig { returns(T.nilable(String)) }
        attr_reader :render_spec

        sig { params(render_spec: String).void }
        attr_writer :render_spec

        sig do
          params(
            comparison_property_name: String,
            include_objects_with_no_value_set: T::Boolean,
            operation_type: String,
            operator:
              HubspotSDK::Events::ComparativePropertyUpdatedOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubspotSDK::Events::ComparativePropertyUpdatedOperation::PropertyType::OrSymbol,
            default_comparison_value: String,
            default_value: String,
            render_spec: String
          ).returns(T.attached_class)
        end
        def self.new(
          comparison_property_name:,
          include_objects_with_no_value_set:,
          operation_type:,
          operator:,
          operator_name:,
          property_type:,
          default_comparison_value: nil,
          default_value: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              comparison_property_name: String,
              include_objects_with_no_value_set: T::Boolean,
              operation_type: String,
              operator:
                HubspotSDK::Events::ComparativePropertyUpdatedOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubspotSDK::Events::ComparativePropertyUpdatedOperation::PropertyType::TaggedSymbol,
              default_comparison_value: String,
              default_value: String,
              render_spec: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::ComparativePropertyUpdatedOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_AFTER =
            T.let(
              :IS_AFTER,
              HubspotSDK::Events::ComparativePropertyUpdatedOperation::Operator::TaggedSymbol
            )
          IS_BEFORE =
            T.let(
              :IS_BEFORE,
              HubspotSDK::Events::ComparativePropertyUpdatedOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::ComparativePropertyUpdatedOperation::Operator::TaggedSymbol
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
                HubspotSDK::Events::ComparativePropertyUpdatedOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY_UPDATED_COMPARATIVE =
            T.let(
              :"property-updated-comparative",
              HubspotSDK::Events::ComparativePropertyUpdatedOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::ComparativePropertyUpdatedOperation::PropertyType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
