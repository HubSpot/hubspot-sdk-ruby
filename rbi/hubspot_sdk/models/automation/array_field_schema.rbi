# typed: strong

module HubspotSDK
  module Models
    module Automation
      class ArrayFieldSchema < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::ArrayFieldSchema,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              HubspotSDK::Automation::IntegerFieldSchema,
              HubspotSDK::Automation::LongFieldSchema,
              HubspotSDK::Automation::DoubleFieldSchema,
              HubspotSDK::Automation::StringFieldSchema,
              HubspotSDK::Automation::BooleanFieldSchema,
              HubspotSDK::Automation::ArrayFieldSchema,
              HubspotSDK::Automation::ObjectFieldSchema
            )
          )
        end
        attr_accessor :items

        sig do
          returns(HubspotSDK::Automation::ArrayFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            items:
              T.any(
                HubspotSDK::Automation::IntegerFieldSchema::OrHash,
                HubspotSDK::Automation::LongFieldSchema::OrHash,
                HubspotSDK::Automation::DoubleFieldSchema::OrHash,
                HubspotSDK::Automation::StringFieldSchema::OrHash,
                HubspotSDK::Automation::BooleanFieldSchema::OrHash,
                HubspotSDK::Automation::ArrayFieldSchema,
                HubspotSDK::Automation::ObjectFieldSchema::OrHash
              ),
            type: HubspotSDK::Automation::ArrayFieldSchema::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(items:, type:)
        end

        sig do
          override.returns(
            {
              items:
                T.any(
                  HubspotSDK::Automation::IntegerFieldSchema,
                  HubspotSDK::Automation::LongFieldSchema,
                  HubspotSDK::Automation::DoubleFieldSchema,
                  HubspotSDK::Automation::StringFieldSchema,
                  HubspotSDK::Automation::BooleanFieldSchema,
                  HubspotSDK::Automation::ArrayFieldSchema,
                  HubspotSDK::Automation::ObjectFieldSchema
                ),
              type: HubspotSDK::Automation::ArrayFieldSchema::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Items
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::IntegerFieldSchema,
                HubspotSDK::Automation::LongFieldSchema,
                HubspotSDK::Automation::DoubleFieldSchema,
                HubspotSDK::Automation::StringFieldSchema,
                HubspotSDK::Automation::BooleanFieldSchema,
                HubspotSDK::Automation::ArrayFieldSchema,
                HubspotSDK::Automation::ObjectFieldSchema
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::ArrayFieldSchema::Items::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::ArrayFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARRAY =
            T.let(
              :ARRAY,
              HubspotSDK::Automation::ArrayFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::ArrayFieldSchema::Type::TaggedSymbol
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
