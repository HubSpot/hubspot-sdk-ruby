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

        sig { returns(String) }
        attr_accessor :property_token

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
        def self.new(property_token:, type:)
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
