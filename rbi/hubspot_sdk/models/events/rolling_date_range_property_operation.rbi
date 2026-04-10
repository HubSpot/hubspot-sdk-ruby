# typed: strong

module HubSpotSDK
  module Models
    module Events
      class RollingDateRangePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::RollingDateRangePropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(Integer) }
        attr_accessor :number_of_days

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubSpotSDK::Events::RollingDateRangePropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubSpotSDK::Events::RollingDateRangePropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(T::Boolean) }
        attr_accessor :requires_time_zone_conversion

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
            number_of_days: Integer,
            operation_type: String,
            operator:
              HubSpotSDK::Events::RollingDateRangePropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubSpotSDK::Events::RollingDateRangePropertyOperation::PropertyType::OrSymbol,
            requires_time_zone_conversion: T::Boolean,
            default_value: String,
            render_spec: String
          ).returns(T.attached_class)
        end
        def self.new(
          include_objects_with_no_value_set:,
          number_of_days:,
          operation_type:,
          operator:,
          operator_name:,
          property_type:,
          requires_time_zone_conversion:,
          default_value: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              number_of_days: Integer,
              operation_type: String,
              operator:
                HubSpotSDK::Events::RollingDateRangePropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubSpotSDK::Events::RollingDateRangePropertyOperation::PropertyType::TaggedSymbol,
              requires_time_zone_conversion: T::Boolean,
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
                HubSpotSDK::Events::RollingDateRangePropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_LESS_THAN_X_DAYS_AGO =
            T.let(
              :IS_LESS_THAN_X_DAYS_AGO,
              HubSpotSDK::Events::RollingDateRangePropertyOperation::Operator::TaggedSymbol
            )
          IS_LESS_THAN_X_DAYS_FROM_NOW =
            T.let(
              :IS_LESS_THAN_X_DAYS_FROM_NOW,
              HubSpotSDK::Events::RollingDateRangePropertyOperation::Operator::TaggedSymbol
            )
          IS_MORE_THAN_X_DAYS_AGO =
            T.let(
              :IS_MORE_THAN_X_DAYS_AGO,
              HubSpotSDK::Events::RollingDateRangePropertyOperation::Operator::TaggedSymbol
            )
          IS_MORE_THAN_X_DAYS_FROM_NOW =
            T.let(
              :IS_MORE_THAN_X_DAYS_FROM_NOW,
              HubSpotSDK::Events::RollingDateRangePropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RollingDateRangePropertyOperation::Operator::TaggedSymbol
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
                HubSpotSDK::Events::RollingDateRangePropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATETIME_ROLLING =
            T.let(
              :"datetime-rolling",
              HubSpotSDK::Events::RollingDateRangePropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RollingDateRangePropertyOperation::PropertyType::TaggedSymbol
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
