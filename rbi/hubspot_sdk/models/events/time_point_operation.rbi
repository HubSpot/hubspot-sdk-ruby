# typed: strong

module HubspotSDK
  module Models
    module Events
      class TimePointOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::TimePointOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Events::TimePointOperation::EndpointBehavior::TaggedSymbol
          )
        end
        attr_accessor :endpoint_behavior

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubspotSDK::Events::TimePointOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::TimePointOperation::PropertyParser::TaggedSymbol
          )
        end
        attr_accessor :property_parser

        sig do
          returns(
            HubspotSDK::Events::TimePointOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig do
          returns(HubspotSDK::Events::TimePointOperation::TimePoint::Variants)
        end
        attr_accessor :time_point

        sig { returns(String) }
        attr_accessor :type

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
            endpoint_behavior:
              HubspotSDK::Events::TimePointOperation::EndpointBehavior::OrSymbol,
            include_objects_with_no_value_set: T::Boolean,
            operation_type: String,
            operator:
              HubspotSDK::Events::TimePointOperation::Operator::OrSymbol,
            operator_name: String,
            property_parser:
              HubspotSDK::Events::TimePointOperation::PropertyParser::OrSymbol,
            property_type:
              HubspotSDK::Events::TimePointOperation::PropertyType::OrSymbol,
            time_point:
              T.any(
                HubspotSDK::Events::DatePoint::OrHash,
                HubspotSDK::Events::IndexedTimePoint::OrHash,
                HubspotSDK::Events::PropertyReferencedTime::OrHash
              ),
            type: String,
            default_value: String,
            render_spec: String
          ).returns(T.attached_class)
        end
        def self.new(
          endpoint_behavior:,
          include_objects_with_no_value_set:,
          operation_type:,
          operator:,
          operator_name:,
          property_parser:,
          property_type:,
          time_point:,
          type:,
          default_value: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              endpoint_behavior:
                HubspotSDK::Events::TimePointOperation::EndpointBehavior::TaggedSymbol,
              include_objects_with_no_value_set: T::Boolean,
              operation_type: String,
              operator:
                HubspotSDK::Events::TimePointOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_parser:
                HubspotSDK::Events::TimePointOperation::PropertyParser::TaggedSymbol,
              property_type:
                HubspotSDK::Events::TimePointOperation::PropertyType::TaggedSymbol,
              time_point:
                HubspotSDK::Events::TimePointOperation::TimePoint::Variants,
              type: String,
              default_value: String,
              render_spec: String
            }
          )
        end
        def to_hash
        end

        module EndpointBehavior
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::TimePointOperation::EndpointBehavior
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXCLUSIVE =
            T.let(
              :EXCLUSIVE,
              HubspotSDK::Events::TimePointOperation::EndpointBehavior::TaggedSymbol
            )
          INCLUSIVE =
            T.let(
              :INCLUSIVE,
              HubspotSDK::Events::TimePointOperation::EndpointBehavior::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::TimePointOperation::EndpointBehavior::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::TimePointOperation::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_AFTER =
            T.let(
              :IS_AFTER,
              HubspotSDK::Events::TimePointOperation::Operator::TaggedSymbol
            )
          IS_BEFORE =
            T.let(
              :IS_BEFORE,
              HubspotSDK::Events::TimePointOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::TimePointOperation::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PropertyParser
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::TimePointOperation::PropertyParser
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANNIVERSARY =
            T.let(
              :ANNIVERSARY,
              HubspotSDK::Events::TimePointOperation::PropertyParser::TaggedSymbol
            )
          ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION =
            T.let(
              :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION,
              HubspotSDK::Events::TimePointOperation::PropertyParser::TaggedSymbol
            )
          UPDATED_AT =
            T.let(
              :UPDATED_AT,
              HubspotSDK::Events::TimePointOperation::PropertyParser::TaggedSymbol
            )
          VALUE =
            T.let(
              :VALUE,
              HubspotSDK::Events::TimePointOperation::PropertyParser::TaggedSymbol
            )
          VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION =
            T.let(
              :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION,
              HubspotSDK::Events::TimePointOperation::PropertyParser::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::TimePointOperation::PropertyParser::TaggedSymbol
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
                HubspotSDK::Events::TimePointOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TIMEPOINT =
            T.let(
              :timepoint,
              HubspotSDK::Events::TimePointOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::TimePointOperation::PropertyType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimePoint
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Events::DatePoint,
                HubspotSDK::Events::IndexedTimePoint,
                HubspotSDK::Events::PropertyReferencedTime
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::TimePointOperation::TimePoint::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
