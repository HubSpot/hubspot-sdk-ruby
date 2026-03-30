# typed: strong

module HubspotSDK
  module Models
    module Automation
      class BooleanFieldSchema < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::BooleanFieldSchema,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Specifies the field type as BOOLEAN, indicating that the field can hold a true
        # or false value.
        sig do
          returns(HubspotSDK::Automation::BooleanFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            type: HubspotSDK::Automation::BooleanFieldSchema::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the field type as BOOLEAN, indicating that the field can hold a true
          # or false value.
          type:
        )
        end

        sig do
          override.returns(
            { type: HubspotSDK::Automation::BooleanFieldSchema::Type::OrSymbol }
          )
        end
        def to_hash
        end

        # Specifies the field type as BOOLEAN, indicating that the field can hold a true
        # or false value.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::BooleanFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEAN =
            T.let(
              :BOOLEAN,
              HubspotSDK::Automation::BooleanFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::BooleanFieldSchema::Type::TaggedSymbol
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
