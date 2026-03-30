# typed: strong

module HubspotSDK
  module Models
    module Automation
      class IntegerFieldSchema < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::IntegerFieldSchema,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The type of the field, which is set to INTEGER.
        sig do
          returns(HubspotSDK::Automation::IntegerFieldSchema::Type::OrSymbol)
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
            type: HubspotSDK::Automation::IntegerFieldSchema::Type::OrSymbol,
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
              type: HubspotSDK::Automation::IntegerFieldSchema::Type::OrSymbol,
              maximum: Integer,
              minimum: Integer
            }
          )
        end
        def to_hash
        end

        # The type of the field, which is set to INTEGER.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::IntegerFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTEGER =
            T.let(
              :INTEGER,
              HubspotSDK::Automation::IntegerFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::IntegerFieldSchema::Type::TaggedSymbol
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
