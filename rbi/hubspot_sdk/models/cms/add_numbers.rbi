# typed: strong

module HubspotSDK
  module Models
    module Cms
      class AddNumbers < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::AddNumbers, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :enclosed_in_parentheses

        sig { returns(HubspotSDK::Cms::AddNumbers::Operator::TaggedSymbol) }
        attr_accessor :operator

        sig { returns(T.nilable(T::Array[HubspotSDK::Cms::Expression])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[HubspotSDK::Cms::Expression]).void }
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
            operator: HubspotSDK::Cms::AddNumbers::Operator::OrSymbol,
            inputs: T::Array[HubspotSDK::Cms::Expression],
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
              operator: HubspotSDK::Cms::AddNumbers::Operator::TaggedSymbol,
              inputs: T::Array[HubspotSDK::Cms::Expression],
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
              T.all(Symbol, HubspotSDK::Cms::AddNumbers::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADD_NUMBERS =
            T.let(
              :ADD_NUMBERS,
              HubspotSDK::Cms::AddNumbers::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::AddNumbers::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
