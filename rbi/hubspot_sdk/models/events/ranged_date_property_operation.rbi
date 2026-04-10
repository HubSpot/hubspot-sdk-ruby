# typed: strong

module HubSpotSDK
  module Models
    module Events
      class RangedDatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::RangedDatePropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(Integer) }
        attr_accessor :lower_bound_timestamp

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubSpotSDK::Events::RangedDatePropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubSpotSDK::Events::RangedDatePropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(T::Boolean) }
        attr_accessor :requires_time_zone_conversion

        sig { returns(Integer) }
        attr_accessor :upper_bound_timestamp

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
            lower_bound_timestamp: Integer,
            operation_type: String,
            operator:
              HubSpotSDK::Events::RangedDatePropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubSpotSDK::Events::RangedDatePropertyOperation::PropertyType::OrSymbol,
            requires_time_zone_conversion: T::Boolean,
            upper_bound_timestamp: Integer,
            default_value: String,
            render_spec: String
          ).returns(T.attached_class)
        end
        def self.new(
          include_objects_with_no_value_set:,
          lower_bound_timestamp:,
          operation_type:,
          operator:,
          operator_name:,
          property_type:,
          requires_time_zone_conversion:,
          upper_bound_timestamp:,
          default_value: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              lower_bound_timestamp: Integer,
              operation_type: String,
              operator:
                HubSpotSDK::Events::RangedDatePropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubSpotSDK::Events::RangedDatePropertyOperation::PropertyType::TaggedSymbol,
              requires_time_zone_conversion: T::Boolean,
              upper_bound_timestamp: Integer,
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
                HubSpotSDK::Events::RangedDatePropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_BETWEEN =
            T.let(
              :IS_BETWEEN,
              HubSpotSDK::Events::RangedDatePropertyOperation::Operator::TaggedSymbol
            )
          IS_NOT_BETWEEN =
            T.let(
              :IS_NOT_BETWEEN,
              HubSpotSDK::Events::RangedDatePropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RangedDatePropertyOperation::Operator::TaggedSymbol
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
                HubSpotSDK::Events::RangedDatePropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATETIME_RANGED =
            T.let(
              :"datetime-ranged",
              HubSpotSDK::Events::RangedDatePropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RangedDatePropertyOperation::PropertyType::TaggedSymbol
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
