# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Xor < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Xor, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :enclosed_in_parentheses

        sig { returns(HubspotSDK::Cms::Xor::Operator::OrSymbol) }
        attr_accessor :operator

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[T::Hash[Symbol, T.anything]]).void }
        attr_writer :inputs

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
            enclosed_in_parentheses: T::Boolean,
            operator: HubspotSDK::Cms::Xor::Operator::OrSymbol,
            inputs: T::Array[T::Hash[Symbol, T.anything]],
            property_name: String,
            value: T::Boolean
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
              operator: HubspotSDK::Cms::Xor::Operator::OrSymbol,
              inputs: T::Array[T::Hash[Symbol, T.anything]],
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
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Xor::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          XOR = T.let(:XOR, HubspotSDK::Cms::Xor::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Xor::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
