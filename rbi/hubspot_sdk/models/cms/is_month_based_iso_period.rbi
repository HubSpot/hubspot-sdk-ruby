# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class IsMonthBasedISOPeriod < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::IsMonthBasedISOPeriod,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubSpotSDK::Cms::IsMonthBasedISOPeriod::Operator::OrSymbol)
        end
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
            operator:
              HubSpotSDK::Cms::IsMonthBasedISOPeriod::Operator::OrSymbol,
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
              operator:
                HubSpotSDK::Cms::IsMonthBasedISOPeriod::Operator::OrSymbol,
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
              T.all(Symbol, HubSpotSDK::Cms::IsMonthBasedISOPeriod::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_MONTH_BASED_ISO_PERIOD =
            T.let(
              :IS_MONTH_BASED_ISO_PERIOD,
              HubSpotSDK::Cms::IsMonthBasedISOPeriod::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::IsMonthBasedISOPeriod::Operator::TaggedSymbol
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
