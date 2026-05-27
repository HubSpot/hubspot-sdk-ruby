# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class IntegerFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::IntegerFieldSchema,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The type of the field, which is set to INTEGER.
        sig do
          returns(HubSpotSDK::Automation::IntegerFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        # The maximum value allowed for the integer field.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum

        sig { params(maximum: Integer).void }
        attr_writer :maximum

        # The minimum value allowed for the integer field.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum

        sig { params(minimum: Integer).void }
        attr_writer :minimum

        sig do
          params(
            type: HubSpotSDK::Automation::IntegerFieldSchema::Type::OrSymbol,
            maximum: Integer,
            minimum: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of the field, which is set to INTEGER.
          type:,
          # The maximum value allowed for the integer field.
          maximum: nil,
          # The minimum value allowed for the integer field.
          minimum: nil
        )
        end

        sig do
          override.returns(
            {
              type: HubSpotSDK::Automation::IntegerFieldSchema::Type::OrSymbol,
              maximum: Integer,
              minimum: Integer
            }
          )
        end
        def to_hash
        end

        # The type of the field, which is set to INTEGER.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::IntegerFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTEGER =
            T.let(
              :INTEGER,
              HubSpotSDK::Automation::IntegerFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::IntegerFieldSchema::Type::TaggedSymbol
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
