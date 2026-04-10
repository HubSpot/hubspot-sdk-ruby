# typed: strong

module HubSpotSDK
  module Models
    module Events
      class RangedTimeOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::RangedTimeOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig do
          returns(
            HubSpotSDK::Events::RangedTimeOperation::LowerBoundEndpointBehavior::TaggedSymbol
          )
        end
        attr_accessor :lower_bound_endpoint_behavior

        sig do
          returns(
            HubSpotSDK::Events::RangedTimeOperation::LowerBoundTimePoint::Variants
          )
        end
        attr_accessor :lower_bound_time_point

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubSpotSDK::Events::RangedTimeOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubSpotSDK::Events::RangedTimeOperation::PropertyParser::TaggedSymbol
          )
        end
        attr_accessor :property_parser

        sig do
          returns(
            HubSpotSDK::Events::RangedTimeOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(String) }
        attr_accessor :type

        sig do
          returns(
            HubSpotSDK::Events::RangedTimeOperation::UpperBoundEndpointBehavior::TaggedSymbol
          )
        end
        attr_accessor :upper_bound_endpoint_behavior

        sig do
          returns(
            HubSpotSDK::Events::RangedTimeOperation::UpperBoundTimePoint::Variants
          )
        end
        attr_accessor :upper_bound_time_point

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
            lower_bound_endpoint_behavior:
              HubSpotSDK::Events::RangedTimeOperation::LowerBoundEndpointBehavior::OrSymbol,
            lower_bound_time_point:
              T.any(
                HubSpotSDK::Events::DatePoint::OrHash,
                HubSpotSDK::Events::IndexedTimePoint::OrHash,
                HubSpotSDK::Events::PropertyReferencedTime::OrHash
              ),
            operation_type: String,
            operator:
              HubSpotSDK::Events::RangedTimeOperation::Operator::OrSymbol,
            operator_name: String,
            property_parser:
              HubSpotSDK::Events::RangedTimeOperation::PropertyParser::OrSymbol,
            property_type:
              HubSpotSDK::Events::RangedTimeOperation::PropertyType::OrSymbol,
            type: String,
            upper_bound_endpoint_behavior:
              HubSpotSDK::Events::RangedTimeOperation::UpperBoundEndpointBehavior::OrSymbol,
            upper_bound_time_point:
              T.any(
                HubSpotSDK::Events::DatePoint::OrHash,
                HubSpotSDK::Events::IndexedTimePoint::OrHash,
                HubSpotSDK::Events::PropertyReferencedTime::OrHash
              ),
            default_value: String,
            render_spec: String
          ).returns(T.attached_class)
        end
        def self.new(
          include_objects_with_no_value_set:,
          lower_bound_endpoint_behavior:,
          lower_bound_time_point:,
          operation_type:,
          operator:,
          operator_name:,
          property_parser:,
          property_type:,
          type:,
          upper_bound_endpoint_behavior:,
          upper_bound_time_point:,
          default_value: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              lower_bound_endpoint_behavior:
                HubSpotSDK::Events::RangedTimeOperation::LowerBoundEndpointBehavior::TaggedSymbol,
              lower_bound_time_point:
                HubSpotSDK::Events::RangedTimeOperation::LowerBoundTimePoint::Variants,
              operation_type: String,
              operator:
                HubSpotSDK::Events::RangedTimeOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_parser:
                HubSpotSDK::Events::RangedTimeOperation::PropertyParser::TaggedSymbol,
              property_type:
                HubSpotSDK::Events::RangedTimeOperation::PropertyType::TaggedSymbol,
              type: String,
              upper_bound_endpoint_behavior:
                HubSpotSDK::Events::RangedTimeOperation::UpperBoundEndpointBehavior::TaggedSymbol,
              upper_bound_time_point:
                HubSpotSDK::Events::RangedTimeOperation::UpperBoundTimePoint::Variants,
              default_value: String,
              render_spec: String
            }
          )
        end
        def to_hash
        end

        module LowerBoundEndpointBehavior
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::RangedTimeOperation::LowerBoundEndpointBehavior
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXCLUSIVE =
            T.let(
              :EXCLUSIVE,
              HubSpotSDK::Events::RangedTimeOperation::LowerBoundEndpointBehavior::TaggedSymbol
            )
          INCLUSIVE =
            T.let(
              :INCLUSIVE,
              HubSpotSDK::Events::RangedTimeOperation::LowerBoundEndpointBehavior::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RangedTimeOperation::LowerBoundEndpointBehavior::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module LowerBoundTimePoint
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Events::DatePoint,
                HubSpotSDK::Events::IndexedTimePoint,
                HubSpotSDK::Events::PropertyReferencedTime
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RangedTimeOperation::LowerBoundTimePoint::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::RangedTimeOperation::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_BETWEEN =
            T.let(
              :IS_BETWEEN,
              HubSpotSDK::Events::RangedTimeOperation::Operator::TaggedSymbol
            )
          IS_NOT_BETWEEN =
            T.let(
              :IS_NOT_BETWEEN,
              HubSpotSDK::Events::RangedTimeOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RangedTimeOperation::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PropertyParser
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::RangedTimeOperation::PropertyParser
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANNIVERSARY =
            T.let(
              :ANNIVERSARY,
              HubSpotSDK::Events::RangedTimeOperation::PropertyParser::TaggedSymbol
            )
          ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION =
            T.let(
              :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION,
              HubSpotSDK::Events::RangedTimeOperation::PropertyParser::TaggedSymbol
            )
          UPDATED_AT =
            T.let(
              :UPDATED_AT,
              HubSpotSDK::Events::RangedTimeOperation::PropertyParser::TaggedSymbol
            )
          VALUE =
            T.let(
              :VALUE,
              HubSpotSDK::Events::RangedTimeOperation::PropertyParser::TaggedSymbol
            )
          VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION =
            T.let(
              :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION,
              HubSpotSDK::Events::RangedTimeOperation::PropertyParser::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RangedTimeOperation::PropertyParser::TaggedSymbol
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
                HubSpotSDK::Events::RangedTimeOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RANGEDTIME =
            T.let(
              :rangedtime,
              HubSpotSDK::Events::RangedTimeOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RangedTimeOperation::PropertyType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module UpperBoundEndpointBehavior
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::RangedTimeOperation::UpperBoundEndpointBehavior
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXCLUSIVE =
            T.let(
              :EXCLUSIVE,
              HubSpotSDK::Events::RangedTimeOperation::UpperBoundEndpointBehavior::TaggedSymbol
            )
          INCLUSIVE =
            T.let(
              :INCLUSIVE,
              HubSpotSDK::Events::RangedTimeOperation::UpperBoundEndpointBehavior::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RangedTimeOperation::UpperBoundEndpointBehavior::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module UpperBoundTimePoint
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Events::DatePoint,
                HubSpotSDK::Events::IndexedTimePoint,
                HubSpotSDK::Events::PropertyReferencedTime
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RangedTimeOperation::UpperBoundTimePoint::Variants
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
