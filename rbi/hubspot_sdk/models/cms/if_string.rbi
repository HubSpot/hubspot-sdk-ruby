# typed: strong

module HubspotSDK
  module Models
    module Cms
      class IfString < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::IfString, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :enclosed_in_parentheses

        sig { returns(T.anything) }
        attr_accessor :if_expression

        sig { returns(HubspotSDK::Cms::IfString::Operator::TaggedSymbol) }
        attr_accessor :operator

        sig { returns(T.nilable(T.anything)) }
        attr_reader :else_expression

        sig { params(else_expression: T.anything).void }
        attr_writer :else_expression

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[T.anything]).void }
        attr_writer :inputs

        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        sig do
          params(
            enclosed_in_parentheses: T::Boolean,
            if_expression: T.anything,
            operator: HubspotSDK::Cms::IfString::Operator::OrSymbol,
            else_expression: T.anything,
            inputs: T::Array[T.anything],
            property_name: String,
            value: String
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
              if_expression: T.anything,
              operator: HubspotSDK::Cms::IfString::Operator::TaggedSymbol,
              else_expression: T.anything,
              inputs: T::Array[T.anything],
              property_name: String,
              value: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::IfString::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IF_STRING =
            T.let(:IF_STRING, HubspotSDK::Cms::IfString::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::IfString::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
