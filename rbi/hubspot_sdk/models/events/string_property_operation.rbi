# typed: strong

module HubSpotSDK
  module Models
    module Events
      class StringPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::StringPropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubSpotSDK::Events::StringPropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(String) }
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
              HubSpotSDK::Events::StringPropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubSpotSDK::Events::StringPropertyOperation::PropertyType::OrSymbol,
            value: String,
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
                HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubSpotSDK::Events::StringPropertyOperation::PropertyType::TaggedSymbol,
              value: String,
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
                HubSpotSDK::Events::StringPropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTAINS =
            T.let(
              :CONTAINS,
              HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
            )
          DOES_NOT_CONTAIN =
            T.let(
              :DOES_NOT_CONTAIN,
              HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
            )
          ENDS_WITH =
            T.let(
              :ENDS_WITH,
              HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
            )
          HAS_EVER_BEEN_EQUAL_TO =
            T.let(
              :HAS_EVER_BEEN_EQUAL_TO,
              HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
            )
          HAS_EVER_CONTAINED =
            T.let(
              :HAS_EVER_CONTAINED,
              HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
            )
          HAS_NEVER_BEEN_EQUAL_TO =
            T.let(
              :HAS_NEVER_BEEN_EQUAL_TO,
              HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
            )
          HAS_NEVER_CONTAINED =
            T.let(
              :HAS_NEVER_CONTAINED,
              HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
            )
          IS_EQUAL_TO =
            T.let(
              :IS_EQUAL_TO,
              HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
            )
          IS_NOT_EQUAL_TO =
            T.let(
              :IS_NOT_EQUAL_TO,
              HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
            )
          STARTS_WITH =
            T.let(
              :STARTS_WITH,
              HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::StringPropertyOperation::Operator::TaggedSymbol
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
                HubSpotSDK::Events::StringPropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRING =
            T.let(
              :string,
              HubSpotSDK::Events::StringPropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::StringPropertyOperation::PropertyType::TaggedSymbol
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
