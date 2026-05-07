# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class DivideNumbers < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::DivideNumbers, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :enclosed_in_parentheses

        sig { returns(HubSpotSDK::Cms::DivideNumbers::Operator::OrSymbol) }
        attr_accessor :operator

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[T.anything]).void }
        attr_writer :inputs

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
            enclosed_in_parentheses: T::Boolean,
            operator: HubSpotSDK::Cms::DivideNumbers::Operator::OrSymbol,
            inputs: T::Array[T.anything],
            property_name: String,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(
          enclosed_in_parentheses:,
          operator:,
          inputs: nil,
          property_name: nil,
          value: nil
        )
        end

        sig do
          override.returns(
            {
              enclosed_in_parentheses: T::Boolean,
              operator: HubSpotSDK::Cms::DivideNumbers::Operator::OrSymbol,
              inputs: T::Array[T.anything],
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
              T.all(Symbol, HubSpotSDK::Cms::DivideNumbers::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DIVIDE_NUMBERS =
            T.let(
              :DIVIDE_NUMBERS,
              HubSpotSDK::Cms::DivideNumbers::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::DivideNumbers::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
