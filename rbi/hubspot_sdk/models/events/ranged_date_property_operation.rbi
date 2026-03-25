# typed: strong

module HubspotSDK
  module Models
    module Events
      class RangedDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::RangedDatePropertyOperation,
              HubspotSDK::Internal::AnyHash
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
            HubspotSDK::Events::RangedDatePropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::RangedDatePropertyOperation::PropertyType::TaggedSymbol
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
              HubspotSDK::Events::RangedDatePropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubspotSDK::Events::RangedDatePropertyOperation::PropertyType::OrSymbol,
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
                HubspotSDK::Events::RangedDatePropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubspotSDK::Events::RangedDatePropertyOperation::PropertyType::TaggedSymbol,
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::RangedDatePropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_BETWEEN =
            T.let(
              :IS_BETWEEN,
              HubspotSDK::Events::RangedDatePropertyOperation::Operator::TaggedSymbol
            )
          IS_NOT_BETWEEN =
            T.let(
              :IS_NOT_BETWEEN,
              HubspotSDK::Events::RangedDatePropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::RangedDatePropertyOperation::Operator::TaggedSymbol
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
                HubspotSDK::Events::RangedDatePropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATETIME_RANGED =
            T.let(
              :"datetime-ranged",
              HubspotSDK::Events::RangedDatePropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::RangedDatePropertyOperation::PropertyType::TaggedSymbol
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
