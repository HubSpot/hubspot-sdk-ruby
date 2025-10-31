# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIAppendObjectPropertyValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIAppendObjectPropertyValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :append_property_name

        sig do
          returns(
            HubspotSDK::Automation::APIAppendObjectPropertyValue::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            append_property_name: String,
            type:
              HubspotSDK::Automation::APIAppendObjectPropertyValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(append_property_name:, type:)
        end

        sig do
          override.returns(
            {
              append_property_name: String,
              type:
                HubspotSDK::Automation::APIAppendObjectPropertyValue::Type::OrSymbol
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
                HubspotSDK::Automation::APIAppendObjectPropertyValue::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPEND_OBJECT_PROPERTY =
            T.let(
              :APPEND_OBJECT_PROPERTY,
              HubspotSDK::Automation::APIAppendObjectPropertyValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIAppendObjectPropertyValue::Type::TaggedSymbol
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
