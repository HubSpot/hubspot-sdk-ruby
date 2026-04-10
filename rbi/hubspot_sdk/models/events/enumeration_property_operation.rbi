# typed: strong

module HubSpotSDK
  module Models
    module Events
      class EnumerationPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::EnumerationPropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubSpotSDK::Events::EnumerationPropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(T::Array[String]) }
        attr_accessor :values

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
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubSpotSDK::Events::EnumerationPropertyOperation::PropertyType::OrSymbol,
            values: T::Array[String],
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
          values:,
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
                HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubSpotSDK::Events::EnumerationPropertyOperation::PropertyType::TaggedSymbol,
              values: T::Array[String],
              default_value: String,
              render_spec: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::EnumerationPropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTAINS_ALL =
            T.let(
              :CONTAINS_ALL,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          DOES_NOT_CONTAIN_ALL =
            T.let(
              :DOES_NOT_CONTAIN_ALL,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          HAS_EVER_BEEN_ANY_OF =
            T.let(
              :HAS_EVER_BEEN_ANY_OF,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          HAS_EVER_BEEN_EXACTLY =
            T.let(
              :HAS_EVER_BEEN_EXACTLY,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          HAS_EVER_CONTAINED_ALL =
            T.let(
              :HAS_EVER_CONTAINED_ALL,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          HAS_NEVER_BEEN_ANY_OF =
            T.let(
              :HAS_NEVER_BEEN_ANY_OF,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          HAS_NEVER_BEEN_EXACTLY =
            T.let(
              :HAS_NEVER_BEEN_EXACTLY,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          HAS_NEVER_CONTAINED_ALL =
            T.let(
              :HAS_NEVER_CONTAINED_ALL,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          IS_ANY_OF =
            T.let(
              :IS_ANY_OF,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          IS_EXACTLY =
            T.let(
              :IS_EXACTLY,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          IS_NONE_OF =
            T.let(
              :IS_NONE_OF,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )
          IS_NOT_EXACTLY =
            T.let(
              :IS_NOT_EXACTLY,
              HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::EnumerationPropertyOperation::Operator::TaggedSymbol
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
                HubSpotSDK::Events::EnumerationPropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENUMERATION =
            T.let(
              :enumeration,
              HubSpotSDK::Events::EnumerationPropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::EnumerationPropertyOperation::PropertyType::TaggedSymbol
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
