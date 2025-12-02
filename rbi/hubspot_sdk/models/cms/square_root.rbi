# typed: strong

module HubspotSDK
  module Models
    module Cms
      class SquareRoot < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::SquareRoot, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::SquareRoot::Operator::TaggedSymbol) }
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
            operator: HubspotSDK::Cms::SquareRoot::Operator::OrSymbol,
            inputs: T::Array[T.anything],
            property_name: String,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(operator:, inputs: nil, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator: HubspotSDK::Cms::SquareRoot::Operator::TaggedSymbol,
              inputs: T::Array[T.anything],
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
              T.all(Symbol, HubspotSDK::Cms::SquareRoot::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SQUARE_ROOT =
            T.let(
              :SQUARE_ROOT,
              HubspotSDK::Cms::SquareRoot::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::SquareRoot::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
