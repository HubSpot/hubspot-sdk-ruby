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

        sig { returns(String) }
        attr_accessor :static_append_value

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
        def self.new(static_append_value:, type:)
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
