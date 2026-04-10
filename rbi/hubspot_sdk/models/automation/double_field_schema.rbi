# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class DoubleFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::DoubleFieldSchema,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates the field type as DOUBLE.
        sig do
          returns(HubSpotSDK::Automation::DoubleFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        # The maximum allowable value for the double field.
        sig { returns(T.nilable(Float)) }
        attr_reader :maximum

        sig { params(maximum: Float).void }
        attr_writer :maximum

        # The minimum allowable value for the double field.
        sig { returns(T.nilable(Float)) }
        attr_reader :minimum

        sig { params(minimum: Float).void }
        attr_writer :minimum

        sig do
          params(
            type: HubSpotSDK::Automation::DoubleFieldSchema::Type::OrSymbol,
            maximum: Float,
            minimum: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the field type as DOUBLE.
          type:,
          # The maximum allowable value for the double field.
          maximum: nil,
          # The minimum allowable value for the double field.
          minimum: nil
        )
        end

        sig do
          override.returns(
            {
              type: HubSpotSDK::Automation::DoubleFieldSchema::Type::OrSymbol,
              maximum: Float,
              minimum: Float
            }
          )
        end
        def to_hash
        end

        # Indicates the field type as DOUBLE.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::DoubleFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DOUBLE =
            T.let(
              :DOUBLE,
              HubSpotSDK::Automation::DoubleFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::DoubleFieldSchema::Type::TaggedSymbol
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
