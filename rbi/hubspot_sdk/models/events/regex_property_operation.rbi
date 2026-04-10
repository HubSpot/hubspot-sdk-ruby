# typed: strong

module HubSpotSDK
  module Models
    module Events
      class RegexPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::RegexPropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :case_sensitive

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubSpotSDK::Events::RegexPropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig { returns(String) }
        attr_accessor :pattern

        sig do
          returns(
            HubSpotSDK::Events::RegexPropertyOperation::PropertyType::TaggedSymbol
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
            case_sensitive: T::Boolean,
            include_objects_with_no_value_set: T::Boolean,
            operation_type: String,
            operator:
              HubSpotSDK::Events::RegexPropertyOperation::Operator::OrSymbol,
            operator_name: String,
            pattern: String,
            property_type:
              HubSpotSDK::Events::RegexPropertyOperation::PropertyType::OrSymbol,
            default_value: String,
            render_spec: String
          ).returns(T.attached_class)
        end
        def self.new(
          case_sensitive:,
          include_objects_with_no_value_set:,
          operation_type:,
          operator:,
          operator_name:,
          pattern:,
          property_type:,
          default_value: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              case_sensitive: T::Boolean,
              include_objects_with_no_value_set: T::Boolean,
              operation_type: String,
              operator:
                HubSpotSDK::Events::RegexPropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              pattern: String,
              property_type:
                HubSpotSDK::Events::RegexPropertyOperation::PropertyType::TaggedSymbol,
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
                HubSpotSDK::Events::RegexPropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DOES_NOT_MATCH_REGEX =
            T.let(
              :DOES_NOT_MATCH_REGEX,
              HubSpotSDK::Events::RegexPropertyOperation::Operator::TaggedSymbol
            )
          MATCHES_REGEX =
            T.let(
              :MATCHES_REGEX,
              HubSpotSDK::Events::RegexPropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RegexPropertyOperation::Operator::TaggedSymbol
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
                HubSpotSDK::Events::RegexPropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REGEX =
            T.let(
              :regex,
              HubSpotSDK::Events::RegexPropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RegexPropertyOperation::PropertyType::TaggedSymbol
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
