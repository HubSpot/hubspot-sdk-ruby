# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class TimeBetweenSkipWeekends < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::TimeBetweenSkipWeekends,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubSpotSDK::Cms::TimeBetweenSkipWeekends::Operator::OrSymbol)
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

        sig { returns(T.nilable(Float)) }
        attr_reader :value

        sig { params(value: Float).void }
        attr_writer :value

        sig do
          params(
            operator:
              HubSpotSDK::Cms::TimeBetweenSkipWeekends::Operator::OrSymbol,
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
              operator:
                HubSpotSDK::Cms::TimeBetweenSkipWeekends::Operator::OrSymbol,
              inputs: T::Array[T.anything],
              property_name: String,
              value: Float
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::TimeBetweenSkipWeekends::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TIME_BETWEEN_SKIP_WEEKENDS =
            T.let(
              :TIME_BETWEEN_SKIP_WEEKENDS,
              HubSpotSDK::Cms::TimeBetweenSkipWeekends::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::TimeBetweenSkipWeekends::Operator::TaggedSymbol
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
