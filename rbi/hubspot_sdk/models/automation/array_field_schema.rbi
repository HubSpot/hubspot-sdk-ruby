# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class ArrayFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::ArrayFieldSchema,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Defines the type of elements contained within the array, which can be an
        # integer, long, double, string, boolean, another array, or an object.
        sig do
          returns(
            T.any(
              HubSpotSDK::Automation::IntegerFieldSchema,
              HubSpotSDK::Automation::LongFieldSchema,
              HubSpotSDK::Automation::DoubleFieldSchema,
              HubSpotSDK::Automation::StringFieldSchema,
              HubSpotSDK::Automation::BooleanFieldSchema,
              HubSpotSDK::Automation::ArrayFieldSchema,
              HubSpotSDK::Automation::ObjectFieldSchema
            )
          )
        end
        attr_accessor :items

        # Specifies that the field is of type 'ARRAY'.
        sig do
          returns(HubSpotSDK::Automation::ArrayFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            items:
              T.any(
                HubSpotSDK::Automation::IntegerFieldSchema::OrHash,
                HubSpotSDK::Automation::LongFieldSchema::OrHash,
                HubSpotSDK::Automation::DoubleFieldSchema::OrHash,
                HubSpotSDK::Automation::StringFieldSchema::OrHash,
                HubSpotSDK::Automation::BooleanFieldSchema::OrHash,
                HubSpotSDK::Automation::ArrayFieldSchema,
                HubSpotSDK::Automation::ObjectFieldSchema::OrHash
              ),
            type: HubSpotSDK::Automation::ArrayFieldSchema::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines the type of elements contained within the array, which can be an
          # integer, long, double, string, boolean, another array, or an object.
          items:,
          # Specifies that the field is of type 'ARRAY'.
          type:
        )
        end

        sig do
          override.returns(
            {
              items:
                T.any(
                  HubSpotSDK::Automation::IntegerFieldSchema,
                  HubSpotSDK::Automation::LongFieldSchema,
                  HubSpotSDK::Automation::DoubleFieldSchema,
                  HubSpotSDK::Automation::StringFieldSchema,
                  HubSpotSDK::Automation::BooleanFieldSchema,
                  HubSpotSDK::Automation::ArrayFieldSchema,
                  HubSpotSDK::Automation::ObjectFieldSchema
                ),
              type: HubSpotSDK::Automation::ArrayFieldSchema::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Defines the type of elements contained within the array, which can be an
        # integer, long, double, string, boolean, another array, or an object.
        module Items
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Automation::IntegerFieldSchema,
                HubSpotSDK::Automation::LongFieldSchema,
                HubSpotSDK::Automation::DoubleFieldSchema,
                HubSpotSDK::Automation::StringFieldSchema,
                HubSpotSDK::Automation::BooleanFieldSchema,
                HubSpotSDK::Automation::ArrayFieldSchema,
                HubSpotSDK::Automation::ObjectFieldSchema
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::ArrayFieldSchema::Items::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Specifies that the field is of type 'ARRAY'.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::ArrayFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARRAY =
            T.let(
              :ARRAY,
              HubSpotSDK::Automation::ArrayFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::ArrayFieldSchema::Type::TaggedSymbol
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
