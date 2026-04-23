# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class Euler < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::Euler, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(HubSpotSDK::Cms::Euler::Operator::OrSymbol) }
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
            operator: HubSpotSDK::Cms::Euler::Operator::OrSymbol,
            property_name: String,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(operator:, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator: HubSpotSDK::Cms::Euler::Operator::OrSymbol,
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
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::Euler::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EULER = T.let(:EULER, HubSpotSDK::Cms::Euler::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::Euler::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
