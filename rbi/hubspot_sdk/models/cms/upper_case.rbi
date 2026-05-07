# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class UpperCase < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::UpperCase, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(HubSpotSDK::Cms::UpperCase::Operator::OrSymbol) }
        attr_accessor :operator

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
            operator: HubSpotSDK::Cms::UpperCase::Operator::OrSymbol,
            inputs: T::Array[T.anything],
            property_name: String,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(operator:, inputs: nil, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator: HubSpotSDK::Cms::UpperCase::Operator::OrSymbol,
              inputs: T::Array[T.anything],
              property_name: String,
              value: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::UpperCase::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UPPER_CASE =
            T.let(
              :UPPER_CASE,
              HubSpotSDK::Cms::UpperCase::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::UpperCase::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
