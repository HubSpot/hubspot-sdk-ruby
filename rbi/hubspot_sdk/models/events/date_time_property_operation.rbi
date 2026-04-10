# typed: strong

module HubSpotSDK
  module Models
    module Events
      class DateTimePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::DateTimePropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubSpotSDK::Events::DateTimePropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubSpotSDK::Events::DateTimePropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(T::Boolean) }
        attr_accessor :requires_time_zone_conversion

        sig { returns(Integer) }
        attr_accessor :timestamp

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
              HubSpotSDK::Events::DateTimePropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubSpotSDK::Events::DateTimePropertyOperation::PropertyType::OrSymbol,
            requires_time_zone_conversion: T::Boolean,
            timestamp: Integer,
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
          requires_time_zone_conversion:,
          timestamp:,
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
                HubSpotSDK::Events::DateTimePropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubSpotSDK::Events::DateTimePropertyOperation::PropertyType::TaggedSymbol,
              requires_time_zone_conversion: T::Boolean,
              timestamp: Integer,
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
                HubSpotSDK::Events::DateTimePropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_AFTER =
            T.let(
              :IS_AFTER,
              HubSpotSDK::Events::DateTimePropertyOperation::Operator::TaggedSymbol
            )
          IS_AFTER_DATE =
            T.let(
              :IS_AFTER_DATE,
              HubSpotSDK::Events::DateTimePropertyOperation::Operator::TaggedSymbol
            )
          IS_BEFORE =
            T.let(
              :IS_BEFORE,
              HubSpotSDK::Events::DateTimePropertyOperation::Operator::TaggedSymbol
            )
          IS_BEFORE_DATE =
            T.let(
              :IS_BEFORE_DATE,
              HubSpotSDK::Events::DateTimePropertyOperation::Operator::TaggedSymbol
            )
          IS_EQUAL_TO =
            T.let(
              :IS_EQUAL_TO,
              HubSpotSDK::Events::DateTimePropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::DateTimePropertyOperation::Operator::TaggedSymbol
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
                HubSpotSDK::Events::DateTimePropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATETIME =
            T.let(
              :datetime,
              HubSpotSDK::Events::DateTimePropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::DateTimePropertyOperation::PropertyType::TaggedSymbol
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
