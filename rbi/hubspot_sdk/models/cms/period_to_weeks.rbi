# typed: strong

module HubspotSDK
  module Models
    module Cms
      class PeriodToWeeks < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::PeriodToWeeks, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::PeriodToWeeks::Operator::OrSymbol) }
        attr_accessor :operator

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[T::Hash[Symbol, T.anything]]).void }
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
            operator: HubspotSDK::Cms::PeriodToWeeks::Operator::OrSymbol,
            inputs: T::Array[T::Hash[Symbol, T.anything]],
            property_name: String,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(operator:, inputs: nil, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator: HubspotSDK::Cms::PeriodToWeeks::Operator::OrSymbol,
              inputs: T::Array[T::Hash[Symbol, T.anything]],
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
              T.all(Symbol, HubspotSDK::Cms::PeriodToWeeks::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PERIOD_TO_WEEKS =
            T.let(
              :PERIOD_TO_WEEKS,
              HubspotSDK::Cms::PeriodToWeeks::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::PeriodToWeeks::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
