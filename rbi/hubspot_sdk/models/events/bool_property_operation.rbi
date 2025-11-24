# typed: strong

module HubspotSDK
  module Models
    module Events
      class BoolPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::BoolPropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubspotSDK::Events::BoolPropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::BoolPropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(T::Boolean) }
        attr_accessor :value

        sig { returns(T.nilable(String)) }
        attr_reader :default_value

        sig { params(default_value: String).void }
        attr_writer :default_value

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type: String,
            operator:
              HubspotSDK::Events::BoolPropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubspotSDK::Events::BoolPropertyOperation::PropertyType::OrSymbol,
            value: T::Boolean,
            default_value: String
          ).returns(T.attached_class)
        end
        def self.new(
          include_objects_with_no_value_set:,
          operation_type:,
          operator:,
          operator_name:,
          property_type:,
          value:,
          default_value: nil
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type: String,
              operator:
                HubspotSDK::Events::BoolPropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubspotSDK::Events::BoolPropertyOperation::PropertyType::TaggedSymbol,
              value: T::Boolean,
              default_value: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::BoolPropertyOperation::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HAS_EVER_BEEN_EQUAL_TO =
            T.let(
              :HAS_EVER_BEEN_EQUAL_TO,
              HubspotSDK::Events::BoolPropertyOperation::Operator::TaggedSymbol
            )
          HAS_NEVER_BEEN_EQUAL_TO =
            T.let(
              :HAS_NEVER_BEEN_EQUAL_TO,
              HubspotSDK::Events::BoolPropertyOperation::Operator::TaggedSymbol
            )
          IS_EQUAL_TO =
            T.let(
              :IS_EQUAL_TO,
              HubspotSDK::Events::BoolPropertyOperation::Operator::TaggedSymbol
            )
          IS_NOT_EQUAL_TO =
            T.let(
              :IS_NOT_EQUAL_TO,
              HubspotSDK::Events::BoolPropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::BoolPropertyOperation::Operator::TaggedSymbol
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
                HubspotSDK::Events::BoolPropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(
              :bool,
              HubspotSDK::Events::BoolPropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::BoolPropertyOperation::PropertyType::TaggedSymbol
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
