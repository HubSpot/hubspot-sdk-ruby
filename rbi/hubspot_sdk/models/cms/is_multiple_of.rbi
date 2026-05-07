# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class IsMultipleOf < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::IsMultipleOf, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(HubSpotSDK::Cms::IsMultipleOf::Operator::OrSymbol) }
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
            operator: HubSpotSDK::Cms::IsMultipleOf::Operator::OrSymbol,
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
              operator: HubSpotSDK::Cms::IsMultipleOf::Operator::OrSymbol,
              inputs: T::Array[T.anything],
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
              T.all(Symbol, HubSpotSDK::Cms::IsMultipleOf::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_MULTIPLE_OF =
            T.let(
              :IS_MULTIPLE_OF,
              HubSpotSDK::Cms::IsMultipleOf::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::IsMultipleOf::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
