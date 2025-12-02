# typed: strong

module HubspotSDK
  module Models
    module Cms
      class NumberEquals < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::NumberEquals, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::NumberEquals::Operator::TaggedSymbol) }
        attr_accessor :operator

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[T.anything]).void }
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
            operator: HubspotSDK::Cms::NumberEquals::Operator::OrSymbol,
            inputs: T::Array[T.anything],
            property_name: String,
            value: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(operator:, inputs: nil, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator: HubspotSDK::Cms::NumberEquals::Operator::TaggedSymbol,
              inputs: T::Array[T.anything],
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
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::NumberEquals::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER_EQUALS =
            T.let(
              :NUMBER_EQUALS,
              HubspotSDK::Cms::NumberEquals::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::NumberEquals::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
