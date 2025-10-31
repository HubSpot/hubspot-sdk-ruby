# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIRelativeDateTimeValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIRelativeDateTimeValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Automation::APITimeDelay) }
        attr_reader :time_delay

        sig do
          params(time_delay: HubspotSDK::Automation::APITimeDelay::OrHash).void
        end
        attr_writer :time_delay

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        sig do
          returns(
            HubspotSDK::Automation::APIRelativeDateTimeValue::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            time_delay: HubspotSDK::Automation::APITimeDelay::OrHash,
            type:
              HubspotSDK::Automation::APIRelativeDateTimeValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          time_delay:,
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
              time_delay: HubspotSDK::Automation::APITimeDelay,
              type:
                HubspotSDK::Automation::APIRelativeDateTimeValue::Type::OrSymbol
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
                HubspotSDK::Automation::APIRelativeDateTimeValue::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RELATIVE_DATETIME =
            T.let(
              :RELATIVE_DATETIME,
              HubspotSDK::Automation::APIRelativeDateTimeValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIRelativeDateTimeValue::Type::TaggedSymbol
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
