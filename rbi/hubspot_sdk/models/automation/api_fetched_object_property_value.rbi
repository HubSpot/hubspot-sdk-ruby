# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIFetchedObjectPropertyValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIFetchedObjectPropertyValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The token to use to identify the object property to use
        sig { returns(String) }
        attr_accessor :property_token

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        sig do
          returns(
            HubspotSDK::Automation::APIFetchedObjectPropertyValue::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            property_token: String,
            type:
              HubspotSDK::Automation::APIFetchedObjectPropertyValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The token to use to identify the object property to use
          property_token:,
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
              property_token: String,
              type:
                HubspotSDK::Automation::APIFetchedObjectPropertyValue::Type::OrSymbol
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
                HubspotSDK::Automation::APIFetchedObjectPropertyValue::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FETCHED_OBJECT_PROPERTY =
            T.let(
              :FETCHED_OBJECT_PROPERTY,
              HubspotSDK::Automation::APIFetchedObjectPropertyValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIFetchedObjectPropertyValue::Type::TaggedSymbol
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
