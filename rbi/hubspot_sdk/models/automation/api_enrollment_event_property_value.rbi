# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIEnrollmentEventPropertyValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIEnrollmentEventPropertyValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :enrollment_event_property_token

        sig do
          returns(
            HubspotSDK::Automation::APIEnrollmentEventPropertyValue::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            enrollment_event_property_token: String,
            type:
              HubspotSDK::Automation::APIEnrollmentEventPropertyValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(enrollment_event_property_token:, type:)
        end

        sig do
          override.returns(
            {
              enrollment_event_property_token: String,
              type:
                HubspotSDK::Automation::APIEnrollmentEventPropertyValue::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIEnrollmentEventPropertyValue::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENROLLMENT_EVENT_PROPERTY =
            T.let(
              :ENROLLMENT_EVENT_PROPERTY,
              HubspotSDK::Automation::APIEnrollmentEventPropertyValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIEnrollmentEventPropertyValue::Type::TaggedSymbol
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
