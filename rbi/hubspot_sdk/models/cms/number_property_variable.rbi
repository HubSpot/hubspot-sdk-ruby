# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class NumberPropertyVariable < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::NumberPropertyVariable,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubSpotSDK::Cms::NumberPropertyVariable::Operator::OrSymbol)
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
              HubSpotSDK::Cms::NumberPropertyVariable::Operator::OrSymbol,
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
                HubSpotSDK::Cms::NumberPropertyVariable::Operator::OrSymbol,
              property_name: String,
              value: Float
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::NumberPropertyVariable::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER_PROPERTY_VARIABLE =
            T.let(
              :NUMBER_PROPERTY_VARIABLE,
              HubSpotSDK::Cms::NumberPropertyVariable::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::NumberPropertyVariable::Operator::TaggedSymbol
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
