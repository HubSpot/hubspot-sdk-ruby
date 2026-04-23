# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ConstantBoolean < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::ConstantBoolean,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Cms::ConstantBoolean::Operator::OrSymbol) }
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
            operator: HubSpotSDK::Cms::ConstantBoolean::Operator::OrSymbol,
            property_name: String,
            value: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(operator:, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator: HubSpotSDK::Cms::ConstantBoolean::Operator::OrSymbol,
              property_name: String,
              value: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::ConstantBoolean::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSTANT_BOOLEAN =
            T.let(
              :CONSTANT_BOOLEAN,
              HubSpotSDK::Cms::ConstantBoolean::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::ConstantBoolean::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
