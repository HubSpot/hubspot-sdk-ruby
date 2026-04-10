# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BooleanPropertyVariable < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BooleanPropertyVariable,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Cms::BooleanPropertyVariable::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :value

        sig { params(value: T::Boolean).void }
        attr_writer :value

        sig do
          params(
            operator:
              HubSpotSDK::Cms::BooleanPropertyVariable::Operator::OrSymbol,
            property_name: String,
            value: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(operator:, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator:
                HubSpotSDK::Cms::BooleanPropertyVariable::Operator::TaggedSymbol,
              property_name: String,
              value: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::BooleanPropertyVariable::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEAN_PROPERTY_VARIABLE =
            T.let(
              :BOOLEAN_PROPERTY_VARIABLE,
              HubSpotSDK::Cms::BooleanPropertyVariable::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::BooleanPropertyVariable::Operator::TaggedSymbol
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
