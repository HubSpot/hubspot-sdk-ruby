# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ConstantString < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::ConstantString,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Cms::ConstantString::Operator::TaggedSymbol) }
        attr_accessor :operator

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
            operator: HubspotSDK::Cms::ConstantString::Operator::OrSymbol,
            property_name: String,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(operator:, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator: HubspotSDK::Cms::ConstantString::Operator::TaggedSymbol,
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
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::ConstantString::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSTANT_STRING =
            T.let(
              :CONSTANT_STRING,
              HubspotSDK::Cms::ConstantString::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::ConstantString::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
