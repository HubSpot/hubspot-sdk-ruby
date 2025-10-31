# typed: strong

module HubspotSDK
  module Models
    module Cms
      class DefaultRequirements < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::DefaultRequirements,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :gates

        sig do
          returns(HubspotSDK::Cms::DefaultRequirements::Operator::TaggedSymbol)
        end
        attr_accessor :operator

        sig { returns(T::Array[String]) }
        attr_accessor :scope_names

        sig { returns(T::Array[String]) }
        attr_accessor :settings

        sig do
          params(
            gates: T::Array[String],
            operator: HubspotSDK::Cms::DefaultRequirements::Operator::OrSymbol,
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
                HubspotSDK::Cms::DefaultRequirements::Operator::TaggedSymbol,
              scope_names: T::Array[String],
              settings: T::Array[String]
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::DefaultRequirements::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AND =
            T.let(
              :AND,
              HubspotSDK::Cms::DefaultRequirements::Operator::TaggedSymbol
            )
          OR =
            T.let(
              :OR,
              HubspotSDK::Cms::DefaultRequirements::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::DefaultRequirements::Operator::TaggedSymbol
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
