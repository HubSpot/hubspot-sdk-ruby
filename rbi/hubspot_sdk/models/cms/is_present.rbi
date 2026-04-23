# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class IsPresent < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::IsPresent, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(T.anything) }
        attr_accessor :expression_to_evaluate

        sig { returns(HubSpotSDK::Cms::IsPresent::Operator::OrSymbol) }
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
            expression_to_evaluate: T.anything,
            operator: HubSpotSDK::Cms::IsPresent::Operator::OrSymbol,
            property_name: String,
            value: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          expression_to_evaluate:,
          operator:,
          property_name: nil,
          value: nil
        )
        end

        sig do
          override.returns(
            {
              expression_to_evaluate: T.anything,
              operator: HubSpotSDK::Cms::IsPresent::Operator::OrSymbol,
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
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::IsPresent::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_PRESENT =
            T.let(
              :IS_PRESENT,
              HubSpotSDK::Cms::IsPresent::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::IsPresent::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
