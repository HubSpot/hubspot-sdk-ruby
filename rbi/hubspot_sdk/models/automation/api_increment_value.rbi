# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIIncrementValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIIncrementValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The amount be which to increment
        sig { returns(Float) }
        attr_accessor :increment_amount

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        sig do
          returns(HubspotSDK::Automation::APIIncrementValue::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            increment_amount: Float,
            type: HubspotSDK::Automation::APIIncrementValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount be which to increment
          increment_amount:,
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
              increment_amount: Float,
              type: HubspotSDK::Automation::APIIncrementValue::Type::OrSymbol
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
              T.all(Symbol, HubspotSDK::Automation::APIIncrementValue::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCREMENT =
            T.let(
              :INCREMENT,
              HubspotSDK::Automation::APIIncrementValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIIncrementValue::Type::TaggedSymbol
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
