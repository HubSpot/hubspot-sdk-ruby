# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIInputVariable < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIInputVariable,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(
            T.any(
              HubspotSDK::Automation::APIActionDataValue,
              HubspotSDK::Automation::APIObjectPropertyValue,
              HubspotSDK::Automation::APIStaticValue,
              HubspotSDK::Automation::APIRelativeDateTimeValue,
              HubspotSDK::Automation::APITimestampValue,
              HubspotSDK::Automation::APIIncrementValue,
              HubspotSDK::Automation::APIFetchedObjectPropertyValue,
              HubspotSDK::Automation::APIAppendObjectPropertyValue,
              HubspotSDK::Automation::APIStaticAppendValue,
              HubspotSDK::Automation::APIEnrollmentEventPropertyValue
            )
          )
        end
        attr_accessor :value

        sig do
          params(
            name: String,
            value:
              T.any(
                HubspotSDK::Automation::APIActionDataValue::OrHash,
                HubspotSDK::Automation::APIObjectPropertyValue::OrHash,
                HubspotSDK::Automation::APIStaticValue::OrHash,
                HubspotSDK::Automation::APIRelativeDateTimeValue::OrHash,
                HubspotSDK::Automation::APITimestampValue::OrHash,
                HubspotSDK::Automation::APIIncrementValue::OrHash,
                HubspotSDK::Automation::APIFetchedObjectPropertyValue::OrHash,
                HubspotSDK::Automation::APIAppendObjectPropertyValue::OrHash,
                HubspotSDK::Automation::APIStaticAppendValue::OrHash,
                HubspotSDK::Automation::APIEnrollmentEventPropertyValue::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(name:, value:)
        end

        sig do
          override.returns(
            {
              name: String,
              value:
                T.any(
                  HubspotSDK::Automation::APIActionDataValue,
                  HubspotSDK::Automation::APIObjectPropertyValue,
                  HubspotSDK::Automation::APIStaticValue,
                  HubspotSDK::Automation::APIRelativeDateTimeValue,
                  HubspotSDK::Automation::APITimestampValue,
                  HubspotSDK::Automation::APIIncrementValue,
                  HubspotSDK::Automation::APIFetchedObjectPropertyValue,
                  HubspotSDK::Automation::APIAppendObjectPropertyValue,
                  HubspotSDK::Automation::APIStaticAppendValue,
                  HubspotSDK::Automation::APIEnrollmentEventPropertyValue
                )
            }
          )
        end
        def to_hash
        end

        module Value
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::APIActionDataValue,
                HubspotSDK::Automation::APIObjectPropertyValue,
                HubspotSDK::Automation::APIStaticValue,
                HubspotSDK::Automation::APIRelativeDateTimeValue,
                HubspotSDK::Automation::APITimestampValue,
                HubspotSDK::Automation::APIIncrementValue,
                HubspotSDK::Automation::APIFetchedObjectPropertyValue,
                HubspotSDK::Automation::APIAppendObjectPropertyValue,
                HubspotSDK::Automation::APIStaticAppendValue,
                HubspotSDK::Automation::APIEnrollmentEventPropertyValue
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIInputVariable::Value::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
