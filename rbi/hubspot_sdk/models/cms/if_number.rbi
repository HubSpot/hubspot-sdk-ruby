# typed: strong

module HubspotSDK
  module Models
    module Cms
      class IfNumber < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::IfNumber, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :enclosed_in_parentheses

        sig { returns(HubspotSDK::Cms::Expression) }
        attr_accessor :if_expression

        sig { returns(HubspotSDK::Cms::IfNumber::Operator::TaggedSymbol) }
        attr_accessor :operator

        sig { returns(T.nilable(HubspotSDK::Cms::Expression)) }
        attr_reader :else_expression

        sig { params(else_expression: HubspotSDK::Cms::Expression).void }
        attr_writer :else_expression

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
            if_expression: HubspotSDK::Cms::Expression,
            operator: HubspotSDK::Cms::IfNumber::Operator::OrSymbol,
            else_expression: HubspotSDK::Cms::Expression,
            inputs: T::Array[HubspotSDK::Cms::Expression],
            property_name: String,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(
          enclosed_in_parentheses:,
          if_expression:,
          operator:,
          else_expression: nil,
          inputs: nil,
          property_name: nil,
          value: nil
        )
        end

        sig do
          override.returns(
            {
              enclosed_in_parentheses: T::Boolean,
              if_expression: HubspotSDK::Cms::Expression,
              operator: HubspotSDK::Cms::IfNumber::Operator::TaggedSymbol,
              else_expression: HubspotSDK::Cms::Expression,
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
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::IfNumber::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IF_NUMBER =
            T.let(:IF_NUMBER, HubspotSDK::Cms::IfNumber::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::IfNumber::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
