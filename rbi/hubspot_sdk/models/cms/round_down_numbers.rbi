# typed: strong

module HubspotSDK
  module Models
    module Cms
      class RoundDownNumbers < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::RoundDownNumbers,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubspotSDK::Cms::RoundDownNumbers::Operator::TaggedSymbol)
        end
        attr_accessor :operator

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
            operator: HubspotSDK::Cms::RoundDownNumbers::Operator::OrSymbol,
            inputs: T::Array[HubspotSDK::Cms::Expression],
            property_name: String,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(operator:, inputs: nil, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator:
                HubspotSDK::Cms::RoundDownNumbers::Operator::TaggedSymbol,
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
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::RoundDownNumbers::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ROUND_DOWN =
            T.let(
              :ROUND_DOWN,
              HubspotSDK::Cms::RoundDownNumbers::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::RoundDownNumbers::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
