# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIActionDataValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIActionDataValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Which action to pull data from.
        sig { returns(String) }
        attr_accessor :action_id

        # The output field name for that action
        sig { returns(String) }
        attr_accessor :data_key

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        sig do
          returns(HubspotSDK::Automation::APIActionDataValue::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            action_id: String,
            data_key: String,
            type: HubspotSDK::Automation::APIActionDataValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Which action to pull data from.
          action_id:,
          # The output field name for that action
          data_key:,
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
              action_id: String,
              data_key: String,
              type: HubspotSDK::Automation::APIActionDataValue::Type::OrSymbol
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
              T.all(Symbol, HubspotSDK::Automation::APIActionDataValue::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIELD_DATA =
            T.let(
              :FIELD_DATA,
              HubspotSDK::Automation::APIActionDataValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIActionDataValue::Type::TaggedSymbol
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
