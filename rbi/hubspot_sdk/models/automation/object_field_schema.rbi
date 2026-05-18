# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class ObjectFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::ObjectFieldSchema,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Contains the properties of the object.
        sig { returns(T.anything) }
        attr_accessor :properties

        # Specifies the type of the field, which is 'OBJECT' by default.
        sig do
          returns(HubSpotSDK::Automation::ObjectFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            properties: T.anything,
            type: HubSpotSDK::Automation::ObjectFieldSchema::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Contains the properties of the object.
          properties:,
          # Specifies the type of the field, which is 'OBJECT' by default.
          type:
        )
        end

        sig do
          override.returns(
            {
              properties: T.anything,
              type: HubSpotSDK::Automation::ObjectFieldSchema::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the type of the field, which is 'OBJECT' by default.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::ObjectFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARRAY =
            T.let(
              :ARRAY,
              HubSpotSDK::Automation::ObjectFieldSchema::Type::TaggedSymbol
            )
          BOOLEAN =
            T.let(
              :BOOLEAN,
              HubSpotSDK::Automation::ObjectFieldSchema::Type::TaggedSymbol
            )
          DOUBLE =
            T.let(
              :DOUBLE,
              HubSpotSDK::Automation::ObjectFieldSchema::Type::TaggedSymbol
            )
          INTEGER =
            T.let(
              :INTEGER,
              HubSpotSDK::Automation::ObjectFieldSchema::Type::TaggedSymbol
            )
          LONG =
            T.let(
              :LONG,
              HubSpotSDK::Automation::ObjectFieldSchema::Type::TaggedSymbol
            )
          OBJECT =
            T.let(
              :OBJECT,
              HubSpotSDK::Automation::ObjectFieldSchema::Type::TaggedSymbol
            )
          STRING =
            T.let(
              :STRING,
              HubSpotSDK::Automation::ObjectFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::ObjectFieldSchema::Type::TaggedSymbol
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
