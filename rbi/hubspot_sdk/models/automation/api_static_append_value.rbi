# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIStaticAppendValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIStaticAppendValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The value to append
        sig { returns(String) }
        attr_accessor :static_append_value

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        sig do
          returns(HubspotSDK::Automation::APIStaticAppendValue::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            static_append_value: String,
            type: HubspotSDK::Automation::APIStaticAppendValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The value to append
          static_append_value:,
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
              static_append_value: String,
              type: HubspotSDK::Automation::APIStaticAppendValue::Type::OrSymbol
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
              T.all(Symbol, HubspotSDK::Automation::APIStaticAppendValue::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STATIC_APPEND_VALUE =
            T.let(
              :STATIC_APPEND_VALUE,
              HubspotSDK::Automation::APIStaticAppendValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIStaticAppendValue::Type::TaggedSymbol
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
