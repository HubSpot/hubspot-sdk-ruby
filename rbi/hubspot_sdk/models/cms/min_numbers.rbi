# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MinNumbers < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::MinNumbers, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::MinNumbers::Operator::TaggedSymbol) }
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
            operator: HubspotSDK::Cms::MinNumbers::Operator::OrSymbol,
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
              operator: HubspotSDK::Cms::MinNumbers::Operator::TaggedSymbol,
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
              T.all(Symbol, HubspotSDK::Cms::MinNumbers::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MIN_NUMBERS =
            T.let(
              :MIN_NUMBERS,
              HubspotSDK::Cms::MinNumbers::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::MinNumbers::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
