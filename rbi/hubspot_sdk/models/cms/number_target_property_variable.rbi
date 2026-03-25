# typed: strong

module HubspotSDK
  module Models
    module Cms
      class NumberTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::NumberTargetPropertyVariable,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Cms::NumberTargetPropertyVariable::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig { returns(T.nilable(Float)) }
        attr_reader :value

        sig { params(value: Float).void }
        attr_writer :value

        sig do
          params(
            operator:
              HubspotSDK::Cms::NumberTargetPropertyVariable::Operator::OrSymbol,
            property_name: String,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(operator:, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator:
                HubspotSDK::Cms::NumberTargetPropertyVariable::Operator::TaggedSymbol,
              property_name: String,
              value: Float
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
                HubspotSDK::Cms::NumberTargetPropertyVariable::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER_TARGET_PROPERTY_VARIABLE =
            T.let(
              :NUMBER_TARGET_PROPERTY_VARIABLE,
              HubspotSDK::Cms::NumberTargetPropertyVariable::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::NumberTargetPropertyVariable::Operator::TaggedSymbol
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
