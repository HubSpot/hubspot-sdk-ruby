# typed: strong

module HubspotSDK
  module Models
    module Events
      class ComparativeStringPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::ComparativeStringPropertyOperation,
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
            HubspotSDK::Events::ComparativeStringPropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::ComparativeStringPropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

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
              HubspotSDK::Events::ComparativeStringPropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubspotSDK::Events::ComparativeStringPropertyOperation::PropertyType::OrSymbol,
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
                HubspotSDK::Events::ComparativeStringPropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubspotSDK::Events::ComparativeStringPropertyOperation::PropertyType::TaggedSymbol,
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
                HubspotSDK::Events::ComparativeStringPropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTAINS =
            T.let(
              :CONTAINS,
              HubspotSDK::Events::ComparativeStringPropertyOperation::Operator::TaggedSymbol
            )
          DOES_NOT_CONTAIN =
            T.let(
              :DOES_NOT_CONTAIN,
              HubspotSDK::Events::ComparativeStringPropertyOperation::Operator::TaggedSymbol
            )
          ENDS_WITH =
            T.let(
              :ENDS_WITH,
              HubspotSDK::Events::ComparativeStringPropertyOperation::Operator::TaggedSymbol
            )
          IS_EQUAL_TO =
            T.let(
              :IS_EQUAL_TO,
              HubspotSDK::Events::ComparativeStringPropertyOperation::Operator::TaggedSymbol
            )
          IS_NOT_EQUAL_TO =
            T.let(
              :IS_NOT_EQUAL_TO,
              HubspotSDK::Events::ComparativeStringPropertyOperation::Operator::TaggedSymbol
            )
          STARTS_WITH =
            T.let(
              :STARTS_WITH,
              HubspotSDK::Events::ComparativeStringPropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::ComparativeStringPropertyOperation::Operator::TaggedSymbol
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
                HubspotSDK::Events::ComparativeStringPropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRING_COMPARATIVE =
            T.let(
              :"string-comparative",
              HubspotSDK::Events::ComparativeStringPropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::ComparativeStringPropertyOperation::PropertyType::TaggedSymbol
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
