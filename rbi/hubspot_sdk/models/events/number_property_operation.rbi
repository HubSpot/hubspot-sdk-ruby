# typed: strong

module HubspotSDK
  module Models
    module Events
      class NumberPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::NumberPropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::NumberPropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(Float) }
        attr_accessor :value

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
            include_objects_with_no_value_set: T::Boolean,
            operation_type: String,
            operator:
              HubspotSDK::Events::NumberPropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubspotSDK::Events::NumberPropertyOperation::PropertyType::OrSymbol,
            value: Float,
            default_value: String,
            render_spec: String
          ).returns(T.attached_class)
        end
        def self.new(
          include_objects_with_no_value_set:,
          operation_type:,
          operator:,
          operator_name:,
          property_type:,
          value:,
          default_value: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type: String,
              operator:
                HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubspotSDK::Events::NumberPropertyOperation::PropertyType::TaggedSymbol,
              value: Float,
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
                HubspotSDK::Events::NumberPropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HAS_EVER_BEEN_EQUAL_TO =
            T.let(
              :HAS_EVER_BEEN_EQUAL_TO,
              HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol
            )
          HAS_NEVER_BEEN_EQUAL_TO =
            T.let(
              :HAS_NEVER_BEEN_EQUAL_TO,
              HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol
            )
          IS_EQUAL_TO =
            T.let(
              :IS_EQUAL_TO,
              HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol
            )
          IS_GREATER_THAN =
            T.let(
              :IS_GREATER_THAN,
              HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol
            )
          IS_GREATER_THAN_OR_EQUAL_TO =
            T.let(
              :IS_GREATER_THAN_OR_EQUAL_TO,
              HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol
            )
          IS_LESS_THAN =
            T.let(
              :IS_LESS_THAN,
              HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol
            )
          IS_LESS_THAN_OR_EQUAL_TO =
            T.let(
              :IS_LESS_THAN_OR_EQUAL_TO,
              HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol
            )
          IS_NOT_EQUAL_TO =
            T.let(
              :IS_NOT_EQUAL_TO,
              HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::NumberPropertyOperation::Operator::TaggedSymbol
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
                HubspotSDK::Events::NumberPropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER =
            T.let(
              :number,
              HubspotSDK::Events::NumberPropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::NumberPropertyOperation::PropertyType::TaggedSymbol
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
