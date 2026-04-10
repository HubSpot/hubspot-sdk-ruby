# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class DefaultRequirements < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::DefaultRequirements,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :gates

        sig do
          returns(HubSpotSDK::Cms::DefaultRequirements::Operator::TaggedSymbol)
        end
        attr_accessor :operator

        sig { returns(T::Array[String]) }
        attr_accessor :scope_names

        sig { returns(T::Array[String]) }
        attr_accessor :settings

        sig do
          params(
            gates: T::Array[String],
            operator: HubSpotSDK::Cms::DefaultRequirements::Operator::OrSymbol,
            scope_names: T::Array[String],
            settings: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(gates:, operator:, scope_names:, settings:)
        end

        sig do
          override.returns(
            {
              gates: T::Array[String],
              operator:
                HubSpotSDK::Cms::DefaultRequirements::Operator::TaggedSymbol,
              scope_names: T::Array[String],
              settings: T::Array[String]
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::DefaultRequirements::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AND =
            T.let(
              :AND,
              HubSpotSDK::Cms::DefaultRequirements::Operator::TaggedSymbol
            )
          OR =
            T.let(
              :OR,
              HubSpotSDK::Cms::DefaultRequirements::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::DefaultRequirements::Operator::TaggedSymbol
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
