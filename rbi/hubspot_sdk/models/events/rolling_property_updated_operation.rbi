# typed: strong

module HubspotSDK
  module Models
    module Events
      class RollingPropertyUpdatedOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::RollingPropertyUpdatedOperation,
              HubspotSDK::Internal::AnyHash
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
            HubspotSDK::Events::RollingPropertyUpdatedOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::RollingPropertyUpdatedOperation::PropertyType::TaggedSymbol
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
            include_objects_with_no_value_set: T::Boolean,
            number_of_days: Integer,
            operation_type: String,
            operator:
              HubspotSDK::Events::RollingPropertyUpdatedOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubspotSDK::Events::RollingPropertyUpdatedOperation::PropertyType::OrSymbol,
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
                HubspotSDK::Events::RollingPropertyUpdatedOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubspotSDK::Events::RollingPropertyUpdatedOperation::PropertyType::TaggedSymbol,
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
                HubspotSDK::Events::RollingPropertyUpdatedOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_UPDATED_IN_LAST_X_DAYS =
            T.let(
              :NOT_UPDATED_IN_LAST_X_DAYS,
              HubspotSDK::Events::RollingPropertyUpdatedOperation::Operator::TaggedSymbol
            )
          UPDATED_IN_LAST_X_DAYS =
            T.let(
              :UPDATED_IN_LAST_X_DAYS,
              HubspotSDK::Events::RollingPropertyUpdatedOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::RollingPropertyUpdatedOperation::Operator::TaggedSymbol
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
                HubspotSDK::Events::RollingPropertyUpdatedOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ROLLING_PROPERTY_UPDATED =
            T.let(
              :"rolling-property-updated",
              HubspotSDK::Events::RollingPropertyUpdatedOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::RollingPropertyUpdatedOperation::PropertyType::TaggedSymbol
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
