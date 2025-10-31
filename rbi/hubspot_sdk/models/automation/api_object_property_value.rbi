# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIObjectPropertyValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIObjectPropertyValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The property name to pull data from.
        sig { returns(String) }
        attr_accessor :property_name

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        sig do
          returns(
            HubspotSDK::Automation::APIObjectPropertyValue::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            property_name: String,
            type: HubspotSDK::Automation::APIObjectPropertyValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The property name to pull data from.
          property_name:,
          # This is the type of input value. This can be one of: "FIELD_DATA",
          # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
          # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
          # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
          type:
        )
        end

        sig do
          override.returns(
            {
              property_name: String,
              type:
                HubspotSDK::Automation::APIObjectPropertyValue::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIObjectPropertyValue::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT_PROPERTY =
            T.let(
              :OBJECT_PROPERTY,
              HubspotSDK::Automation::APIObjectPropertyValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIObjectPropertyValue::Type::TaggedSymbol
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
