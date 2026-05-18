# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class BooleanFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::BooleanFieldSchema,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies the field type as BOOLEAN, indicating that the field can hold a true
        # or false value.
        sig do
          returns(HubSpotSDK::Automation::BooleanFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            type: HubSpotSDK::Automation::BooleanFieldSchema::Type::OrSymbol
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
            { type: HubSpotSDK::Automation::BooleanFieldSchema::Type::OrSymbol }
          )
        end
        def to_hash
        end

        # Specifies the field type as BOOLEAN, indicating that the field can hold a true
        # or false value.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::BooleanFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARRAY =
            T.let(
              :ARRAY,
              HubSpotSDK::Automation::BooleanFieldSchema::Type::TaggedSymbol
            )
          BOOLEAN =
            T.let(
              :BOOLEAN,
              HubSpotSDK::Automation::BooleanFieldSchema::Type::TaggedSymbol
            )
          DOUBLE =
            T.let(
              :DOUBLE,
              HubSpotSDK::Automation::BooleanFieldSchema::Type::TaggedSymbol
            )
          INTEGER =
            T.let(
              :INTEGER,
              HubSpotSDK::Automation::BooleanFieldSchema::Type::TaggedSymbol
            )
          LONG =
            T.let(
              :LONG,
              HubSpotSDK::Automation::BooleanFieldSchema::Type::TaggedSymbol
            )
          OBJECT =
            T.let(
              :OBJECT,
              HubSpotSDK::Automation::BooleanFieldSchema::Type::TaggedSymbol
            )
          STRING =
            T.let(
              :STRING,
              HubSpotSDK::Automation::BooleanFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::BooleanFieldSchema::Type::TaggedSymbol
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
