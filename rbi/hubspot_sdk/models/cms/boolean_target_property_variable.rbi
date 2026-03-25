# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BooleanTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BooleanTargetPropertyVariable,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Cms::BooleanTargetPropertyVariable::Operator::TaggedSymbol
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
              HubspotSDK::Cms::BooleanTargetPropertyVariable::Operator::OrSymbol,
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
                HubspotSDK::Cms::BooleanTargetPropertyVariable::Operator::TaggedSymbol,
              property_name: String,
              value: T::Boolean
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
                HubspotSDK::Cms::BooleanTargetPropertyVariable::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEAN_TARGET_PROPERTY_VARIABLE =
            T.let(
              :BOOLEAN_TARGET_PROPERTY_VARIABLE,
              HubspotSDK::Cms::BooleanTargetPropertyVariable::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::BooleanTargetPropertyVariable::Operator::TaggedSymbol
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
